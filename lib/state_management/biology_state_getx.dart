import 'package:get/get.dart';

import '../data/model/biology_data_model.dart';
import '../services/database.dart';

class ServiceController extends GetxController {
  // ประกาศตัวแปร observable เพื่อเก็บ state ของข้อมูล Biology
  RxList<BiologyItem> biologyItems = RxList<BiologyItem>();

  DatabaseService databaseService = DatabaseService();

  @override
  void onInit() {
    super.onInit();
    fetchData(); // เรียกใช้ fetchData เมื่อ Controller ถูกสร้าง
  }

  void fetchData() async {
    // ดึงข้อมูลจากฐานข้อมูลและอัปเดต state
    List<BiologyItem> fetchedData = await databaseService.fetchData();
    biologyItems.value = fetchedData;
  }

  void insertData(BiologyItem item) async {
    // เพิ่มข้อมูลลงในฐานข้อมูลและอัปเดต state
    await databaseService.insertData(item);
    fetchData(); // เรียกใช้ fetchData เพื่ออัปเดต state หลังจากการเพิ่มข้อมูล
  }

  void updateData(BiologyItem item) async {
    // อัปเดตข้อมูลในฐานข้อมูลและอัปเดต state
    await databaseService.updateData(item);
    fetchData(); // เรียกใช้ fetchData เพื่ออัปเดต state หลังจากการอัปเดตข้อมูล
  }

  void deleteData(BiologyItem item) async {
    // ลบข้อมูลในฐานข้อมูลและอัปเดต state
    await databaseService.deleteData(item);
    fetchData(); // เรียกใช้ fetchData เพื่ออัปเดต state หลังจากการลบข้อมูล
  }
}
