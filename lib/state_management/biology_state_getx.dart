import 'package:get/get.dart';
import 'package:profile_app/data/model/general_data.dart';
import 'package:profile_app/services/isar_service.dart';

import '../data/model/biology_data_model.dart';

class ServiceController extends GetxController {
  // ประกาศตัวแปร observable เพื่อเก็บ state ของข้อมูล Biology
  RxList<BiologyItem> biologyItems = <BiologyItem>[].obs;

  Isarservice isarservice = Isarservice();

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    try {
      await isarservice.getAllData();
    } catch (error) {
      print("Error fetching data: $error");
    }
  }

  void insertData(General newGeneral) async {
    try {
      await isarservice.createGeneraldata(newGeneral);
      fetchData();
    } catch (error) {
      print("Error inserting data: $error");
    }
  }

  void deleteData(BiologyItem item) async {
    await isarservice.cleanDb();
    fetchData();
  }
}
