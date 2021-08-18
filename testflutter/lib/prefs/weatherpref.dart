import 'package:shared_preferences/shared_preferences.dart';

class WeatherPref {
  static Future setPref(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("weatherPref", value);
  }

  static Future<bool> getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool("weatherPref") == null) {
      prefs.setBool("weatherPref", true);
    }
    bool ans = prefs.getBool("weatherPref")!;

      return ans;

    
  }
}