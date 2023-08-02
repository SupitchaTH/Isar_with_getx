import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:forme/forme.dart';
import 'package:forme_base_fields/forme_base_fields.dart';
import 'package:profile_app/ui/widgets/forme_text_field.dart';
import 'package:profile_app/data/model/experience_list.dart';
import 'package:profile_app/ui/viewmodel/biology_list.dart';

class InsertBiologyPage extends StatefulWidget {
  const InsertBiologyPage({super.key});

  @override
  State<InsertBiologyPage> createState() => _InsertBiologyPageState();
}

class _InsertBiologyPageState extends State<InsertBiologyPage> {
  FormeKey formeKey = FormeKey();

  String selectedExperienceOption = experienceList.currentOption;

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
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Visibility(
                visible: selectedExperienceOption == experienceList.options[0],
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ExperienceFormeTextField(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: OrganizationFormeTextField(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
