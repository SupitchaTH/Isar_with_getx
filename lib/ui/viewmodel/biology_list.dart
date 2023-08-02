import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:profile_app/utils/theme_color.dart';

import '../../state_management/biology_state_getx.dart';

class BiologyListView extends StatelessWidget {
  BiologyListView({super.key});
  ServiceController serviceController = Get.put(ServiceController());
  final ThemeClass _themeClass = ThemeClass();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2, //serviceController.biologyItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("Name", style: Theme.of(context).textTheme.displayMedium),
          subtitle: Text("Position :",
              style: Theme.of(context).textTheme.displaySmall),
          leading: CircleAvatar(backgroundColor: _themeClass.secondColor),
        );
      },
    );
  }
}
