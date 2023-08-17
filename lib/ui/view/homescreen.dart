import 'dart:developer';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_app/services/isar_service.dart';
import 'package:profile_app/ui/view/all_biology_screen.dart';
import 'package:profile_app/ui/view/insert_biology_screen.dart';

import '../../state_management/biology_state_getx.dart';
import '../../utils/theme_color.dart';
import '../viewmodel/profile_view.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;
  ServiceController serviceController = Get.put(ServiceController());
  final service = Isarservice();

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.manage_search, size: 30),
      const Icon(Icons.account_circle_rounded, size: 30),
      const Icon(Icons.add_circle_outline, size: 30)
    ];

    Color scaffoldBackgroundColor;
    if (index == 0) {
      scaffoldBackgroundColor = Theme.of(context).colorScheme.secondary;
    } else {
      scaffoldBackgroundColor = Theme.of(context).colorScheme.primary;
    }

    Color appBarBackgroundColor;
    if (index == 0) {
      appBarBackgroundColor = Theme.of(context).colorScheme.secondary;
    } else {
      appBarBackgroundColor = Theme.of(context).colorScheme.primary;
    }

    String appBarText = 'Profile';
    if (index == 0) {
      appBarText = 'All information';
    } else if (index == 2) {
      appBarText = 'Add information';
    }

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: appBarBackgroundColor,
        title: Text(
          appBarText,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: index,
        children: [
          AllBiologyList(), // หน้าแรก
          ProfileView(), // หน้าแสดงรายการ Biology
          InsertBiologyPage(), // หน้าแสดงหน้าแบบฟอร์มเพิ่มข้อมูล Biology
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        index: index,
        onTap: (index) {
          setState(() => this.index = index);
          /*if (index == 0) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AllBiologyList(),
              ),
            );
          } else if (index == 1) {
            serviceController.fetchData();
          } else if (index == 2) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => InsertBiologyPage(),
              ),
            );
          }*/
        },
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeIn,
        animationDuration: const Duration(milliseconds: 300),
        items: items,
      ),
    );
  }
}
