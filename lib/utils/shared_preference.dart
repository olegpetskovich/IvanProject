import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String _loggedStatusKey = 'loggedStatusKey';

  static Future<void> setLoggedInStatus() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(_loggedStatusKey, true);
  }

  static Future<void> setLoggedOutStatus() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(_loggedStatusKey, false);
  }

  static Future<bool> isLoggedIn() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(_loggedStatusKey) ?? false;
  }
}