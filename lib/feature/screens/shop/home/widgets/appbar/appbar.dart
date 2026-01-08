import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';

AppBar homeAppBar(GlobalKey<ScaffoldState> homeScaffoldKey) {
  // Pass the Scaffold key
  return AppBar(
    surfaceTintColor: Colors.white,
    title: const RoundedSearchBar(),
    leading: IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () => homeScaffoldKey.currentState!.openDrawer(),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications_none_outlined),
      ),
    ],
  );
}
