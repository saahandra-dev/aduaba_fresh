import 'package:aduaba_fresh/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    
    prefs.setString("email", user.email);
    prefs.setString("password", user.password);
    prefs.setString("Firstame", user.firstName);
    prefs.setString("lastName", user.lastName);
    prefs.setString("imageUrl", user.imageUrl);
    prefs.setString("phoneNumber", user.phoneNumber);
    // prefs.setString("renewalToken", user.renewalToken);

    return prefs.commit();
  }

  Future<User> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    
    String email = prefs.getString("email");
    String password = prefs.getString("password");
    String firstName = prefs.getString("firstName");
    String lastName = prefs.getString("lastName");
    String imageUrl = prefs.getString("imageUrl");
    String phoneNumber = prefs.getString("phoneNumber");
    
    // String type = prefs.getString("type");
    // String token = prefs.getString("token");
    // String renewalToken = prefs.getString("renewalToken");

    return User(
        
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName,
        imageUrl: imageUrl,
        phoneNumber: phoneNumber);
  }

  void removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove("email");
    prefs.remove("password");
    prefs.remove("firstName");
    prefs.remove("lastName");
    prefs.remove("imageUrl");
    prefs.remove("phoneNumber");
  }

  // Future<String> getToken(args) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String token = prefs.getString("token");
  //   return token;

  //}
}