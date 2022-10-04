import 'package:flutter/material.dart';
import 'package:mobile_pos/core/constants/colors.dart';

class DashboardPage extends StatelessWidget {
  static const String route = "/dashboard";
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Dashboard",
          style: TextStyle(color: POSColor.secondaryColor, fontSize: 18),
        ),
      ),
    );
  }
}
