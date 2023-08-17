import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:profile_app/utils/theme_color.dart';

import '../../state_management/biology_state_getx.dart';

class ProfileView extends StatefulWidget {
  ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  ServiceController serviceController = Get.put(ServiceController());
  final ThemeClass _themeClass = ThemeClass();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: GetBuilder<ServiceController>(
              builder: (controller) {
                if (controller.biologyItems.isEmpty) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  );
                }

                final lastBiologyItem = controller.biologyItems.last;
                return SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/Jodfair_1.jpg'),
                            ),
                            Text(
                                '${lastBiologyItem.firstname} ${lastBiologyItem.surname}'),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
