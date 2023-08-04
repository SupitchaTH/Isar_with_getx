import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeClass _themeClass = ThemeClass();

class ThemeClass {
  Color primaryColor = HexColor('#0A014F');
  Color secondColor = HexColor('#2B2465');
  Color thirdColor = HexColor('#002500');
  Color fourthColor = HexColor('#61988E');
  Color defaultColor = HexColor('#FFFFFF');
  Color textColor = Colors.black;

  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    unselectedWidgetColor: Colors.white38,
    colorScheme: const ColorScheme.light().copyWith(
        primary: _themeClass.primaryColor,
        secondary: _themeClass.thirdColor,
        tertiary: _themeClass.fourthColor),
    fontFamily: 'Rubik',
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontStyle: FontStyle.normal,
        color: _themeClass.defaultColor,
      ),
      displayMedium: TextStyle(
        fontSize: 16,
        fontStyle: FontStyle.normal,
        color: _themeClass.defaultColor,
      ),
      displaySmall: TextStyle(
        fontSize: 14,
        fontStyle: FontStyle.normal,
        color: _themeClass.defaultColor,
      ),
      bodyMedium: const TextStyle(
        fontSize: 16,
        fontStyle: FontStyle.normal,
        color: Colors.white30,
      ),
      bodySmall: const TextStyle(
        fontSize: 16,
        fontStyle: FontStyle.normal,
        color: Colors.white,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontStyle: FontStyle.normal,
        color: _themeClass.defaultColor,
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateColor.resolveWith((states) => Colors.white38),
    ),
  );
}
