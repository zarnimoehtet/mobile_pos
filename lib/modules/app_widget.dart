import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import '../core/log/logger.dart';
import '../core/translations/translation.dart';
import '../flavors.dart';
import 'app_routes.dart';

class YHSMultiPOSApp extends StatefulWidget {
  const YHSMultiPOSApp({Key? key}) : super(key: key);

  @override
  State<YHSMultiPOSApp> createState() => _YHSMultiPOSAppState();
}

class _YHSMultiPOSAppState extends State<YHSMultiPOSApp> {
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
        locale: Get.locale ?? const Locale("en"),
        fallbackLocale: const Locale("en", "UK"),
        logWriterCallback: (message, {bool isError = false}) =>
            logger.d(message),
        theme: ThemeData(
          fontFamily: Get.locale == const Locale("my", "MM")
              ? GoogleFonts.notoSansMyanmar().fontFamily
              : GoogleFonts.poppins().fontFamily,
          scaffoldBackgroundColor: const Color(0xFFf2f2f2),
          toggleableActiveColor: POSColor.primaryColorDark,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              actionsIconTheme:
                  const IconThemeData(color: POSColor.primaryColorDark),
              titleTextStyle: TextStyle(
                fontFamily: Get.locale == const Locale("my", "MM")
                    ? GoogleFonts.notoSansMyanmar().fontFamily
                    : GoogleFonts.poppins().fontFamily,
                color: POSColor.primaryColorDark,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              iconTheme: const IconThemeData(color: POSColor.primaryColorDark)),
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
