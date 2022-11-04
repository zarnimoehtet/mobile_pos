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
}
