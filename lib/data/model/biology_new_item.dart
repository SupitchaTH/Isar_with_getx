// สร้าง instance ของ BiologyItem ที่ต้องการเพิ่มลงในฐานข้อมูล
import '../../state_management/biology_state_getx.dart';
import 'biology_data_model.dart';
import 'package:get/get.dart';

BiologyItem newItem = BiologyItem(
  firstname: "John",
  surname: "Doe",
  email: "john.doe@example.com",
  phone: "1234567890",
  birthdate: "1990-01-01",
  educationlevel: "Bachelor",
  department: "Biology",
  academy: "ABC University",
  experience: "3 years",
  organization: "XYZ Organization",
  skills: ["Skill 1", "Skill 2", "Skill 3"],
);
