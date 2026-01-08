import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';

import '/Utils/exports/data_paths.dart';

class TabScreens {
  static const tabScreen = [
    AllScreen(),
    PlacedScreen(),
    ConfirmedScreen(),
    Readytodispatch(),
    DispatchedScreen(),
    Deliverd(),
    InspectionScreen(),
    ReturnScreens(),
    Cancelled(),
  ];
}
