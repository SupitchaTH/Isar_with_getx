import 'package:path/path.dart';
import 'package:profile_app/data/model/biology_data_model.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static const BiologyTable = "BiologyItemTable";
  static DatabaseService instance = DatabaseService();

  Future<Database> database() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'biology_item.db'),
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
            "Create Table $BiologyTable (id Text Primary key, firstname Text, surname Text, email Text, phone Text, birthdate Text, educationlevel Text,department Text, academy Text, experience Text, organization Text,skills Text)");
      },
    );
  }

  Future<List<BiologyItem>> fetchData() async {
    Database db = await database();
    List<Map<dynamic, dynamic>> biologies = await db.query(BiologyTable);

    return biologies.map((e) => BiologyItem.fromMap(e)).toList();
  }

  Future<void> insertData(BiologyItem item) async {
    Database db = await database();
    await db.insert(BiologyTable, item.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> updateData(BiologyItem item) async {
    Database db = await database();
    await db.update(BiologyTable, item.toMap(),
        where: "id = ?",
        whereArgs: [item.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> deleteData(BiologyItem item) async {
    Database db = await database();
    await db.delete(BiologyTable, where: "id = ?", whereArgs: [item.id]);
  }
}
