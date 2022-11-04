import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'core/utils/hive_utils.dart';
import 'flavors.dart';
import 'injection.dart';
import 'modules/app_widget.dart';

void main() async {
  F.appFlavor = Flavor.DEV;
  await dotenv.load(fileName: ".env");
  await HiveUtils.registerHive();
  await initInjection();
  runApp(const YHSMultiPOSApp());
}
