import 'package:flutter/material.dart';

import 'flavors.dart';
import 'modules/app_widget.dart';

void main() {
  F.appFlavor = Flavor.PROD;
  runApp(const YHSMultiPOSApp());
}
