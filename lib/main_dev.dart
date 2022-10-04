import 'package:flutter/material.dart';
import 'flavors.dart';
import 'modules/app_widget.dart';

void main() {
  F.appFlavor = Flavor.DEV;
  runApp(const MoboPOSApp());
}
