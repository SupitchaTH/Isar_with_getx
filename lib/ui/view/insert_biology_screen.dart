import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:forme/forme.dart';
import 'package:get/get.dart';
import 'package:profile_app/data/model/biology_data_model.dart';
import 'package:profile_app/data/model/educationlevel_list.dart';
import 'package:profile_app/data/model/general_data.dart';
import 'package:profile_app/services/isar_service.dart';
import 'package:profile_app/state_management/biology_state_getx.dart';
import 'package:profile_app/ui/widgets/experience_button_skill.dart';
import 'package:profile_app/ui/widgets/forme_text_field.dart';
import 'package:profile_app/data/model/experience_list.dart';
import 'package:profile_app/utils/theme_color.dart';
import 'package:uuid/uuid.dart';
import 'package:isar/isar.dart';

class InsertBiologyPage extends StatefulWidget {
  const InsertBiologyPage({Key? key}) : super(key: key);

  @override
  State<InsertBiologyPage> createState() => _InsertBiologyPageState();
}

class _InsertBiologyPageState extends State<InsertBiologyPage> {
  final ThemeClass _themeClass = ThemeClass();
  final FormeKey formeKey = FormeKey();

  TextEditingController pickDateController = TextEditingController();
  ServiceController serviceController = Get.put(ServiceController());

  String selectedExperienceOption = experienceList.currentOption;
  String? educationlevel = educationLevelList.educatiomselectedItem;
  String? logSelectedItem(String selectedItem) {
    setState(() {
      educationlevel = selectedItem.toString();
    });
    return educationlevel;
  }

  List<AdditionalFieldData> additionalFieldsData = [];
  List<SkillChip> skillChipList = [];

  List<Experiencekey> getAdditionalFieldsData() {
    List<Experiencekey> additionalFieldsDataList =
        additionalFieldsData.map((data) {
      String experience =
          formeKey.field<FormeFieldState<String>>("experience").value;
      String organization =
          formeKey.field<FormeFieldState<String>>("organization").value;
      return Experiencekey(
        experience: experience,
        organization: organization,
      );
    }).toList();

    return additionalFieldsDataList;
  }

  List<String> getSkillChipNames() {
    List<String> skillNames = skillChipList.map((chip) => chip.name).toList();
    return skillNames;
  }

  void clearAdditionalFieldsData() {
    setState(() {
      additionalFieldsData.clear();
    });
  }

  void clearFormFields() {
    setState(() {
      formeKey.field<FormeFieldState<String>>("firstname").didChange("");
      formeKey.field<FormeFieldState<String>>("Surname").didChange("");
      formeKey.field<FormeFieldState<String>>("email").didChange("");
      formeKey.field<FormeFieldState<String>>("phone").didChange("");
      formeKey.field<FormeFieldState<String>>("department").didChange("");
      formeKey.field<FormeFieldState<String>>("academy").didChange("");
      pickDateController.clear();
      additionalFieldsData.clear();
      skillChipList.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Forme(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: formeKey,
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: FirstnameFormeTextField(),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: LastnameFormeTextField(),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: EmailFormeTextfield(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                children: <Widget>[
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: PhoneFormeTextField(),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: BirthdatePicker(
                          pickDateController: pickDateController),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: EducationLevelDropdownList(
                          onItemSelected: logSelectedItem),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: DepartmentFormeTextField(),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: AcademyFormeTextField(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: ExperienceRadioButton(
                onChanged: (selectedOption) {
                  if (selectedOption != selectedExperienceOption) {
                    clearAdditionalFieldsData();
                  }
                  setState(() {
                    selectedExperienceOption = selectedOption;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Visibility(
                visible: selectedExperienceOption == experienceList.options[0],
                child: Column(
                  children: [
                    for (int index = 0;
                        index < additionalFieldsData.length;
                        index++)
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ExperienceFormeTextField(
                              controller: TextEditingController(
                                  text: additionalFieldsData[index]
                                      .experience), // กำหนดค่าเริ่มต้นให้กับ controller
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: OrganizationFormeTextField(
                              controller: TextEditingController(
                                  text: additionalFieldsData[index]
                                      .organization), // กำหนดค่าเริ่มต้นให้กับ controller
                            ),
                          ),
                        ],
                      ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: AddExperienceButton(
                        onPressed: () {
                          setState(() {
                            additionalFieldsData.add(AdditionalFieldData());
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
              child: SkillTextField(
                onSkillChipListChanged: (chipList) {
                  setState(() {
                    skillChipList = chipList;
                  });
                },
              ),
            ),
            FormeValidationListener(
              builder: (context, validation, child) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: _themeClass.secondColor,
                        minimumSize: Size(buttonWidth, 40)),
                    onPressed: validation.isValid
                        ? () async {
                            if (formeKey.validation.isValid) {
                              String myid = Uuid().v4().toString();
                              String Firstname = formeKey
                                  .field<FormeFieldState<String>>("firstname")
                                  .value;
                              String Surname = formeKey
                                  .field<FormeFieldState<String>>("Surname")
                                  .value;
                              String email = formeKey
                                  .field<FormeFieldState<String>>("email")
                                  .value;
                              String phone = formeKey
                                  .field<FormeFieldState<String>>("phone")
                                  .value;
                              String birthdate = pickDateController.text;

                              String educationlevelselected =
                                  educationlevel.toString();

                              String department = formeKey
                                  .field<FormeFieldState<String>>("department")
                                  .value;
                              String academy = formeKey
                                  .field<FormeFieldState<String>>("academy")
                                  .value;

                              /*var additionalFieldsString =
                                  getAdditionalFieldsData();*/

                              List<String> skillChipNames = getSkillChipNames();

                              /*BiologyItem item = BiologyItem(
                                id: myid,
                                firstname: firstname,
                                surname: surname,
                                email: email,
                                phone: phone,
                                birthdate: birthdate,
                                educationlevel: educationlevelselected,
                                department: department,
                                academy: academy,
                              );*/

                              //serviceController.insertData(item);

                              General general = General()
                                ..firstname = Firstname
                                ..surname = Surname
                                ..email = email
                                ..phone = phone
                                ..birthdate = birthdate
                                ..educationlevel = educationlevelselected
                                ..department = department
                                ..academy = academy
                                ..skills = skillChipNames;

                              serviceController.insertData(general);

                              clearFormFields();
                            }
                          }
                        : null,
                    icon: const Icon(
                      Icons.save_rounded,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Save',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
