import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String _isPolicyAcceptedKey = 'isAcceptedPolicyKey';

  static Future<void> acceptPolicy() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(_isPolicyAcceptedKey, true);
  }

  static Future<bool> isPolicyAccepted() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(_isPolicyAcceptedKey) ?? false;
  }
}