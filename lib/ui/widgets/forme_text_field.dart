import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:forme/forme.dart';
import 'package:forme_base_fields/field/material/forme_text_field.dart';
import 'package:forme_base_fields/forme_base_fields.dart';
import 'package:intl/intl.dart';
import 'package:profile_app/data/model/biology_data_model.dart';
import 'package:profile_app/data/model/educationlevel_list.dart';
import 'package:profile_app/data/model/experience_list.dart';
import 'package:profile_app/utils/theme_color.dart';
import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';

ThemeClass _themeClass = ThemeClass();

class FirstnameFormeTextField extends StatelessWidget {
  const FirstnameFormeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return FormeTextField(
      initialValue: 'Supitcha',
      textAlignVertical: TextAlignVertical.center,
      name: "firstname",
      validator: FormeValidates.notBlank(errorText: 'Should not be empty'),
      decoration: InputDecoration(
          hintText: 'Firstname',
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          filled: true,
          fillColor: _themeClass.secondColor,
          errorStyle: Theme.of(context).textTheme.labelSmall),
      keyboardType: TextInputType.name,
      style: Theme.of(context).textTheme.bodySmall,
      cursorColor: Colors.white,
    );
  }
}

class LastnameFormeTextField extends StatelessWidget {
  const LastnameFormeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return FormeTextField(
      initialValue: 'Theppithak',
      textAlignVertical: TextAlignVertical.center,
      name: "Surname",
      validator: FormeValidates.notBlank(errorText: 'Should not be empty'),
      decoration: InputDecoration(
          hintText: 'Surname',
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          filled: true,
          fillColor: _themeClass.secondColor,
          errorStyle: Theme.of(context).textTheme.labelSmall),
      keyboardType: TextInputType.name,
      style: Theme.of(context).textTheme.bodySmall,
      cursorColor: Colors.white,
    );
  }
}

class EmailFormeTextfield extends StatelessWidget {
  const EmailFormeTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return FormeTextField(
      initialValue: 'Supitcha.theppithak@gmail.com',
      textAlignVertical: TextAlignVertical.center,
      name: "email",
      validator: FormeValidates.email(errorText: 'Email is invalid'),
      decoration: InputDecoration(
          hintText: 'Email',
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          filled: true,
          fillColor: _themeClass.secondColor,
          errorStyle: Theme.of(context).textTheme.labelSmall),
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.white,
    );
  }
}

class PhoneFormeTextField extends StatelessWidget {
  const PhoneFormeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return FormeTextField(
      initialValue: '0614979329',
      textAlignVertical: TextAlignVertical.center,
      name: "phone",
      validator: FormeValidates.size(
          min: 10, max: 10, errorText: 'Should have 10 numbers'),
      decoration: InputDecoration(
          hintText: 'Phone number',
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          filled: true,
          fillColor: _themeClass.secondColor,
          errorStyle: Theme.of(context).textTheme.labelSmall),
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: TextInputType.phone,
      cursorColor: Colors.white,
    );
  }
}

class BirthdatePicker extends StatelessWidget {
  BirthdatePicker({super.key, required this.pickDateController});

  final TextEditingController pickDateController;

  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final format = DateFormat('dd/MM/yyyy');
    return DateTimeField(
      format: format,
      decoration: InputDecoration(
        hintText: 'Birthdate',
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        prefixIcon: const Icon(
          Icons.cake_rounded,
          color: Colors.white38,
          size: 20,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 2, color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 2, color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 2, color: Colors.transparent),
        ),
        filled: true,
        fillColor: _themeClass.secondColor,
      ),
      onShowPicker: (context, currentValue) async {
        final pickDate = showDatePicker(
          context: context,
          initialDate: currentValue ?? dateTime,
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        );
        pickDate.then((value) {
          if (value != null) {
            pickDateController.text = format.format(value);
          }
        });
        return pickDate;
      },
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: TextInputType.datetime,
      cursorColor: Colors.white,
    );
  }
}

class EducationLevelDropdownList extends StatefulWidget {
  const EducationLevelDropdownList({super.key, required this.onItemSelected});
  final Function(String) onItemSelected;

  @override
  State<EducationLevelDropdownList> createState() => _EducationLevelState();
}

class _EducationLevelState extends State<EducationLevelDropdownList> {
  @override
  Widget build(BuildContext context) {
    var selectedItem = educationLevelList.educatiomselectedItem;
    var items = educationLevelList.educationlevellist;
    return DropdownButtonFormField<String>(
      isExpanded: true,
      isDense: true,
      dropdownColor: _themeClass.secondColor,
      icon: const Icon(
        Icons.arrow_drop_down_circle_rounded,
        color: Colors.white38,
      ),
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 2, color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 2, color: Colors.white38),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 2, color: Colors.transparent),
        ),
        labelText: "Education Level",
        labelStyle: Theme.of(context).textTheme.bodyMedium,
      ),
      items: items
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                maxLines: 1,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          )
          .toList(),
      onChanged: (item) {
        setState(() {
          selectedItem = item;
          // เรียกใช้ฟังก์ชัน callback เพื่อ log ค่า selectedItem ใน InsertBiologyPage
          widget.onItemSelected(selectedItem!);
        });
      },
      value: selectedItem,
    );
  }
}

class DepartmentFormeTextField extends StatelessWidget {
  const DepartmentFormeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return FormeTextField(
      initialValue: 'Biomedical Engineering',
      textAlignVertical: TextAlignVertical.center,
      name: "department",
      validator: FormeValidates.notBlank(errorText: 'Should not be empty'),
      decoration: InputDecoration(
          hintText: 'Department',
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          filled: true,
          fillColor: _themeClass.secondColor,
          errorStyle: Theme.of(context).textTheme.labelSmall),
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: TextInputType.text,
      cursorColor: Colors.white,
    );
  }
}

class AcademyFormeTextField extends StatelessWidget {
  const AcademyFormeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return FormeTextField(
      initialValue: 'Srinakharinwirot University',
      textAlignVertical: TextAlignVertical.center,
      name: "academy",
      validator: FormeValidates.notBlank(errorText: 'Should not be empty'),
      decoration: InputDecoration(
          hintText: 'Educational institution',
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          filled: true,
          fillColor: _themeClass.secondColor,
          errorStyle: Theme.of(context).textTheme.labelSmall),
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: TextInputType.text,
      cursorColor: Colors.white,
    );
  }
}

class ExperienceRadioButton extends StatefulWidget {
  final Function(String) onChanged;

  const ExperienceRadioButton({required this.onChanged, Key? key})
      : super(key: key);

  @override
  State<ExperienceRadioButton> createState() => _ExperienceRadioButtonState();
}

class _ExperienceRadioButtonState extends State<ExperienceRadioButton> {
  String exCurrentOption = experienceList.currentOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: 'Have any experience?',
          labelStyle: Theme.of(context).textTheme.bodyMedium,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.white38),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Flexible(
              child: RadioListTile<String>(
                activeColor: _themeClass.defaultColor,
                fillColor: MaterialStateColor.resolveWith(
                  (states) => states.contains(MaterialState.selected)
                      ? _themeClass
                          .defaultColor // สีของวงกลมเมื่อ Radio ถูกเลือก
                      : Theme.of(context)
                          .unselectedWidgetColor, // สีของวงกลมเมื่อ Radio ไม่ถูกเลือก
                ),
                title: Text(
                  experienceList.options[0],
                  style: TextStyle(
                    color: exCurrentOption == experienceList.options[0]
                        ? _themeClass.defaultColor
                        : Theme.of(context).unselectedWidgetColor,
                  ),
                ),
                value: experienceList.options[0],
                groupValue: exCurrentOption,
                onChanged: (value) {
                  setState(() {
                    exCurrentOption = value!;
                    widget.onChanged(exCurrentOption);
                  });
                },
              ),
            ),
            Flexible(
              child: RadioListTile<String>(
                activeColor: _themeClass.defaultColor,
                fillColor: MaterialStateColor.resolveWith(
                  (states) => states.contains(MaterialState.selected)
                      ? _themeClass
                          .defaultColor // สีของวงกลมเมื่อ Radio ถูกเลือก
                      : Theme.of(context)
                          .unselectedWidgetColor, // สีของวงกลมเมื่อ Radio ไม่ถูกเลือก
                ),
                title: Text(
                  experienceList.options[1],
                  style: TextStyle(
                    color: exCurrentOption == experienceList.options[1]
                        ? _themeClass.defaultColor
                        : Theme.of(context).unselectedWidgetColor,
                  ),
                ),
                value: experienceList.options[1],
                groupValue: exCurrentOption,
                onChanged: (value) {
                  setState(() {
                    exCurrentOption = value!;
                    widget.onChanged(exCurrentOption);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExperienceFormeTextField extends StatelessWidget {
  final TextEditingController controller;

  const ExperienceFormeTextField({
    required this.controller, // เพิ่มพารามิเตอร์ controller
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormeTextField(
      initialValue: 'No',
      name: "experience",
      validator: FormeValidates.notBlank(errorText: 'Should not be empty'),
      decoration: InputDecoration(
          hintText: 'Experience',
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          filled: true,
          fillColor: _themeClass.secondColor,
          errorStyle: Theme.of(context).textTheme.labelSmall),
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: TextInputType.text,
      cursorColor: Colors.white,
    );
  }
}

class OrganizationFormeTextField extends StatelessWidget {
  final TextEditingController controller; // เพิ่มพารามิเตอร์ controller
  const OrganizationFormeTextField({
    required this.controller, // เพิ่มพารามิเตอร์ controller
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormeTextField(
      initialValue: 'Nothing',
      name: "organization",
      validator: FormeValidates.notBlank(errorText: 'Should not be empty'),
      decoration: InputDecoration(
          hintText: 'Organization',
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.transparent),
          ),
          filled: true,
          fillColor: _themeClass.secondColor,
          errorStyle: Theme.of(context).textTheme.labelSmall),
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: TextInputType.text,
      cursorColor: Colors.white,
    );
  }
}

class SkillTextField extends StatefulWidget {
  final ValueChanged<List<SkillChip>>
      onSkillChipListChanged; // เพิ่มพารามิเตอร์

  const SkillTextField({
    Key? key,
    required this.onSkillChipListChanged, // รับพารามิเตอร์ผ่าน constructor
  }) : super(key: key);

  @override
  _SkillTextFieldState createState() => _SkillTextFieldState();
}

class _SkillTextFieldState extends State<SkillTextField> {
  final List<SkillChip> _SkillchipList = [];
  final TextEditingController _SkillchipText = TextEditingController();

  void deleteSkillchip(String id) {
    setState(() {
      _SkillchipList.removeWhere((element) => element.id == id);
    });
  }

  List<SkillChip> getSkillChipList() {
    return _SkillchipList;
  }

  void _updateSkillChips() {
    widget.onSkillChipListChanged(_SkillchipList);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: TextField(
                  controller: _SkillchipText,
                  decoration: InputDecoration(
                    hintText: 'Skills',
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.transparent),
                    ),
                    filled: true,
                    fillColor: _themeClass.secondColor,
                  ),
                  style: Theme.of(context).textTheme.bodySmall,
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _SkillchipList.add(SkillChip(
                          id: DateTime.now().toString(),
                          name: _SkillchipText.text));
                      _SkillchipText.clear();
                      _updateSkillChips();
                    });
                  },
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.white30,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: _SkillchipList.map(
                (chip) => Chip(
                  elevation: 2,
                  shadowColor: Colors.white38,
                  backgroundColor: _themeClass.secondColor,
                  side: BorderSide(color: _themeClass.secondColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  label: Text(chip.name),
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                  onDeleted: () {
                    setState(() {
                      deleteSkillchip(chip.id);
                      _updateSkillChips(); // เรียก callback ที่นี่
                    });
                  },
                  deleteIconColor: Colors.white30,
                ),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
