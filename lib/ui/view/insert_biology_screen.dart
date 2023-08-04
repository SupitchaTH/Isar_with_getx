import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:forme/forme.dart';
import 'package:forme_base_fields/forme_base_fields.dart';
import 'package:profile_app/ui/widgets/experience_button_skill.dart';
import 'package:profile_app/ui/widgets/forme_text_field.dart';
import 'package:profile_app/data/model/experience_list.dart';
import 'package:profile_app/ui/viewmodel/biology_list.dart';
import 'package:profile_app/ui/widgets/save_button.dart';

class InsertBiologyPage extends StatefulWidget {
  const InsertBiologyPage({super.key});

  @override
  State<InsertBiologyPage> createState() => _InsertBiologyPageState();
}

class _InsertBiologyPageState extends State<InsertBiologyPage> {
  FormeKey formeKey = FormeKey();

  String selectedExperienceOption = experienceList.currentOption;

  List<Widget> additionalFields = []; // List สำหรับเก็บช่องเพิ่มเติม

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Forme(
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
                      child: BirthdatePicker(),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: EducationLevelDropdownList(),
                    ),
                  ),
                  Expanded(
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
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: ExperienceFormeTextField(),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: OrganizationFormeTextField(),
                    ),
                    ...additionalFields.map(
                      (field) => Padding(
                        padding: const EdgeInsets.all(10),
                        child: Dismissible(
                          key: Key(field.hashCode
                              .toString()), // กำหนดคีย์ให้กับ Dismissible
                          onDismissed: (direction) {
                            setState(() {
                              additionalFields
                                  .remove(field); // ลบช่องที่ถูก Dismiss
                            });
                          },
                          child: field, // แสดงช่องที่ต้องการลบ
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: AddExperienceButton(
                        onPressed: () {
                          setState(() {
                            const newExperienceField = Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                  child: ExperienceFormeTextField(),
                                ),
                                OrganizationFormeTextField(),
                              ],
                            );
                            additionalFields.add(newExperienceField);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: SkillTextField()),
            const Padding(
              padding: EdgeInsets.all(20),
              child: SaveBiologyButton(),
            ),
          ],
        ),
      ),
    );
  }
}
