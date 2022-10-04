import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import '../core/log/logger.dart';
import '../core/translations/translation.dart';
import '../flavors.dart';
import 'app_routes.dart';

class MoboPOSApp extends StatefulWidget {
  const MoboPOSApp({Key? key}) : super(key: key);

  @override
  State<MoboPOSApp> createState() => _MoboPOSAppState();
}

class _MoboPOSAppState extends State<MoboPOSApp> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _flavorBanner(
      show: F.appFlavor == Flavor.DEV,
      child: GetMaterialApp(
        title: "Mobo POS",
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.initialRoute,
        getPages: AppRoutes.pages,
        translations: POSTranslation(),
        locale: Get.locale,
        fallbackLocale: const Locale("en", "UK"),
        logWriterCallback: (message, {bool isError = false}) =>
            logger.d(message),
        theme: ThemeData(
          fontFamily: Get.locale == const Locale("my", "MM")
              ? "Pyidaungsu"
              : GoogleFonts.roboto().fontFamily,
          scaffoldBackgroundColor: const Color(0xFFf2f2f2),
          toggleableActiveColor: POSColor.primaryColorDark,
          primaryColor: POSColor.primaryColorDark,
          colorScheme: const ColorScheme.light().copyWith(
            secondary: POSColor.secondaryColor,
            primary: POSColor.primaryColorDark,
          ),
        ),
      ),
    );
  }

  Widget _flavorBanner({
    required Widget child,
    bool show = true,
  }) =>
      show
          ? Banner(
              location: BannerLocation.topStart,
              message:
                  F.appFlavor == Flavor.PROD ? "#production" : "#development",
              layoutDirection: TextDirection.ltr,
              color: POSColor.secondaryColor,
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 7.5,
                  color: POSColor.primaryColorDark,
                  letterSpacing: 1.0),
              textDirection: TextDirection.ltr,
              child: child,
            )
          : child;
}
