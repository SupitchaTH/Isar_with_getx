import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:profile_app/data/model/general_data.dart';

class Isarservice {
  late Future<Isar> db;

  Isarservice() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [GeneralSchema],
        inspector: true,
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }

  Future<void> createGeneraldata(General newGeneral) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.generals.putSync(newGeneral));
  }

  Stream<List<General>> getAllData() async* {
    final isar = await db;
    yield* isar.generals.where().watch(fireImmediately: true);
  }

  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }
}
