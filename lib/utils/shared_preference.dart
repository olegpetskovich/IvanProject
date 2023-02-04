import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String _loggedStatusKey = 'loggedStatusKey';

  static Future<void> setLoggedStatus({required bool isLogged}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(_loggedStatusKey, isLogged);
  }

  static Future<bool> isLoggedIn() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(_loggedStatusKey) ?? false;
  }
}