import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profile_app/utils/theme_color.dart';

class AddExperienceButton extends StatefulWidget {
  const AddExperienceButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  State<AddExperienceButton> createState() => _AddExperienceButtonState();
}

class _AddExperienceButtonState extends State<AddExperienceButton> {
  final ThemeClass _themeClass = ThemeClass();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: _themeClass.secondColor,
          minimumSize: const Size(40, 40)),
      onPressed: () {
        widget.onPressed();
      },
      icon: const Icon(
        Icons.add,
        color: Colors.white30,
      ),
      label: Text(
        'Add Experience',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
