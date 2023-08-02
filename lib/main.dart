import 'package:flutter/material.dart';
import 'package:profile_app/utils/theme_color.dart';
import 'package:profile_app/ui/view/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeClass.appTheme,
      home: const HomePage(),
    );
  }
}
