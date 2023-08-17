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
    return SafeArea(
        child: Column(
      children: [
        Expanded(
          child: GetX<ServiceController>(
            builder: (controller) {
              return ListView.builder(
                itemCount: serviceController.biologyItems.length,
                itemBuilder: (context, index) {
                  var biologyItem = serviceController.biologyItems[index];
                  return Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.endToStart,
                    background: Container(),
                    secondaryBackground: Container(
                      color: Colors.cyan,
                      child: const Icon(
                        Icons.delete_forever,
                        color: Colors.black,
                      ),
                    ),
                    onDismissed: (direction) {
                      serviceController.deleteData(biologyItem);
                    },
                    child: ListTile(
                      title: Text(
                        '${serviceController.biologyItems[index].firstname} ${serviceController.biologyItems[index].surname}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      subtitle: Text(
                          '${serviceController.biologyItems[index].email}'),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    ));
  }
}
