import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String get host {
    return dotenv.env["HOST"]!;
  }

  static String get userName {
    return dotenv.env["USERNAME"]!;
  }

  static String get password {
    return dotenv.env["PASSWORD"]!;
  }

  static String get secureCode {
    return dotenv.env["HASH"]!;
  }

  static String get apiKey {
    return "AIzaSyDgS1KKwv4EYY6UH1ZB8N6zAgDubX23Ais";
  }
}
