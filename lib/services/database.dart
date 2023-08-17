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
            "Create Table $BiologyTable (id TEXT PRIMARY KEY, firstname TEXT, surname TEXT, email TEXT, phone TEXT, birthdate TEXT, educationlevel TEXT,department TEXT, academy TEXT, experiencekey TEXT, skills TEXT )");
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

  Future<void> deleteData(BiologyItem item) async {
    Database db = await database();
    await db.delete(BiologyTable, where: "id = ?", whereArgs: [item.id]);
  }
}
