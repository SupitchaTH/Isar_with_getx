import 'package:isar/isar.dart';

part 'general_data.g.dart';

@Collection()
class General {
  Id id = Isar.autoIncrement;
  late String firstname;
  late String surname;
  late String email;
  late String phone;
  late String birthdate;
  late String educationlevel;
  late String department;
  late String academy;
  List<ExperienceKey>? experiencekey;
  late List<String> skills;
}

@embedded
class ExperienceKey {
  late String? experience;
  late String? organization;
}
