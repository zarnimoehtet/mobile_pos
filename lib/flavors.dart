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
        return 'YHS Multi POS';
      case Flavor.DEV:
        return 'YHS Multi POS Dev';
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
}
