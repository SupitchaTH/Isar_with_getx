import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../state_management/biology_state_getx.dart';
import '../../utils/theme_color.dart';

class ALLBiologyListView extends StatelessWidget {
  ALLBiologyListView({super.key});
  ServiceController serviceController = Get.put(ServiceController());
  final ThemeClass _themeClass = ThemeClass();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("Name", style: Theme.of(context).textTheme.displayMedium),
          subtitle:
              Text("Position :", style: Theme.of(context).textTheme.bodySmall),
          leading: CircleAvatar(backgroundColor: _themeClass.fourthColor),
        );
      },
    );
  }
}
