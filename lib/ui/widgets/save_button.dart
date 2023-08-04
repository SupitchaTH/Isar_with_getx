import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/utils/theme_color.dart';

class SaveBiologyButton extends StatefulWidget {
  const SaveBiologyButton({super.key});

  @override
  State<SaveBiologyButton> createState() => _SaveBiologyButtonState();
}

class _SaveBiologyButtonState extends State<SaveBiologyButton> {
  final ThemeClass _themeClass = ThemeClass();
  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width;
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: _themeClass.secondColor,
          minimumSize: Size(buttonWidth, 40)),
      onPressed: () {},
      icon: const Icon(
        Icons.save_rounded,
        color: Colors.white,
      ),
      label: Text(
        'Save',
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
