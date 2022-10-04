// ignore_for_file: constant_identifier_names

enum Flavor {
  PROD,
  DEV,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'MoboPOS';
      case Flavor.DEV:
        return 'MoboPOS Dev';
      default:
        return 'title';
    }
  }

  static String get longHashtag {
    switch (appFlavor) {
      case Flavor.PROD:
        return '#production';
      case Flavor.DEV:
        return '#development';
      default:
        return '';
    }
  }

  // static String get baseURL {
  //   switch (appFlavor) {
  //     case Flavor.PROD:
  //       return dotenv.env["HOST"]!;
  //     case Flavor.DEV:
  //       return dotenv.env["HOST"]!;
  //     default:
  //       return 'title';
  //   }
  // }

}
