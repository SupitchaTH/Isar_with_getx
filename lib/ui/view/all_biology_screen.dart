import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../viewmodel/all_biology_list.dart';

class AllBiologyList extends StatefulWidget {
  const AllBiologyList({super.key});

  @override
  State<AllBiologyList> createState() => _AllBiologyListState();
}

class _AllBiologyListState extends State<AllBiologyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: ALLBiologyListView(),
    );
  }
}
