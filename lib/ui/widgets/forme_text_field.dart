import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:forme/forme.dart';
import 'package:forme_base_fields/field/material/forme_text_field.dart';
import 'package:forme_base_fields/forme_base_fields.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
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
      textAlignVertical: TextAlignVertical.center,
      name: "firstname",
      validator: FormeValidates.any(
        [
          FormeValidates.notEmpty(errorText: 'Firstname should not empty'),
          FormeValidates.range(1, 5)
        ],
      ),
      decoration: InputDecoration(
        hintText: 'Firstname',
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        fillColor: _themeClass.secondColor,
      ),
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
      textAlignVertical: TextAlignVertical.center,
      name: "Surname",
      validator: FormeValidates.any(
        [
          FormeValidates.notEmpty(errorText: 'Surname should not empty'),
          FormeValidates.range(1, 5)
        ],
      ),
      decoration: InputDecoration(
        hintText: 'Surname',
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        fillColor: _themeClass.secondColor,
      ),
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
      textAlignVertical: TextAlignVertical.center,
      name: "email",
      validator: FormeValidates.any(
        [
          FormeValidates.notEmpty(errorText: 'Email should not empty'),
          FormeValidates.email()
        ],
      ),
      decoration: InputDecoration(
        hintText: 'Email',
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        fillColor: _themeClass.secondColor,
      ),
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
      textAlignVertical: TextAlignVertical.center,
      name: "phone",
      validator: FormeValidates.any(
        [
          FormeValidates.notEmpty(errorText: 'Phone number should not empty'),
          FormeValidates.equals(10)
        ],
      ),
      decoration: InputDecoration(
        hintText: 'Phone number',
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        fillColor: _themeClass.secondColor,
      ),
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: TextInputType.phone,
      cursorColor: Colors.white,
    );
  }
}

class BirthdatePicker extends StatelessWidget {
  BirthdatePicker({super.key});

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
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 2, color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
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
        return pickDate;
      },
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: TextInputType.datetime,
      cursorColor: Colors.white,
    );
  }
}

class EducationLevelDropdownList extends StatefulWidget {
  const EducationLevelDropdownList({super.key});

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
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 2, color: Colors.white38),
        ),
        labelText: "Education Level",
        labelStyle: const TextStyle(color: Colors.white38),
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
        setState(() => selectedItem = item);
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
      textAlignVertical: TextAlignVertical.center,
      name: "department",
      validator: FormeValidates.any(
        [
          FormeValidates.notEmpty(errorText: 'Department should not empty'),
        ],
      ),
      decoration: InputDecoration(
        hintText: 'Department',
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        fillColor: _themeClass.secondColor,
      ),
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
      textAlignVertical: TextAlignVertical.center,
      name: "academy",
      validator: FormeValidates.any(
        [
          FormeValidates.notEmpty(
              errorText: 'Educational institution should not empty'),
        ],
      ),
      decoration: InputDecoration(
        hintText: 'Educational institution',
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        fillColor: _themeClass.secondColor,
      ),
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
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.white38),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          Expanded(
            child: RadioListTile<String>(
              activeColor: _themeClass.defaultColor,
              fillColor: MaterialStateColor.resolveWith(
                (states) => states.contains(MaterialState.selected)
                    ? _themeClass.defaultColor // สีของวงกลมเมื่อ Radio ถูกเลือก
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
                  log('Value button1: $exCurrentOption');
                });
              },
            ),
          ),
          Expanded(
            child: RadioListTile<String>(
              activeColor: _themeClass.defaultColor,
              fillColor: MaterialStateColor.resolveWith(
                (states) => states.contains(MaterialState.selected)
                    ? _themeClass.defaultColor // สีของวงกลมเมื่อ Radio ถูกเลือก
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
                  log('Value button2: $exCurrentOption');
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceFormeTextField extends StatelessWidget {
  const ExperienceFormeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return FormeTextField(
      name: "experience",
      validator: FormeValidates.any(
        [
          FormeValidates.notEmpty(errorText: 'Experience should not empty'),
        ],
      ),
      decoration: InputDecoration(
        hintText: 'Experience',
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        fillColor: _themeClass.secondColor,
      ),
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: TextInputType.text,
      cursorColor: Colors.white,
    );
  }
}

class OrganizationFormeTextField extends StatelessWidget {
  const OrganizationFormeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return FormeTextField(
      name: "organization",
      validator: FormeValidates.any(
        [
          FormeValidates.notEmpty(errorText: 'Phone number should not empty'),
        ],
      ),
      decoration: InputDecoration(
        hintText: 'Organization',
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 10, color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        fillColor: _themeClass.secondColor,
      ),
      style: Theme.of(context).textTheme.bodySmall,
      keyboardType: TextInputType.text,
      cursorColor: Colors.white,
    );
  }
}
