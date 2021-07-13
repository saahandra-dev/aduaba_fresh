import 'package:aduaba_fresh/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

// class UserPreference {
//   static SharedPreferences _preferences;

//   static const _keyUserFirstName = 'firstName';

//   static Future init() async =>
//   _preferences = await SharedPreferences.getInstance();

//   static Future setUserFirstName(String firstName) async =>
//     await _preferences.setString(_keyUserFirstName, firstName);

//   static String getUserFirstName() => _preferences.getString(_keyUserFirstName);
// }

class UserPreference {
  static SharedPreferences prefs;

  static Future init() async =>

  prefs = await SharedPreferences.getInstance();

  static Future saveUser(User user) async {
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user', json.encode(user));
  }

  Future<User> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    
    return User.fromJson(json.decode(prefs.getString('user')));
  }

  void removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove("user");
  }

  // Future<String> getToken(args) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String token = prefs.getString("token");
  //   return token;

  //}
}