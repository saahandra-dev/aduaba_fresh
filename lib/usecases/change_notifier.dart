import 'dart:async';
import 'dart:convert';

import 'package:aduaba_fresh/usecases/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


enum Status{
  NotloggedIn,
  NotRegistered,
  LoggedIn,
  Registered,
  Authenticating,
  Registering,
  LoggedOut
}

class AuthProvider with ChangeNotifier {
  Status _loggedInStatus = Status.NotloggedIn;
  Status _registeredInStatus = Status.NotRegistered;

  Status get loggedInStatus => _loggedInStatus;
  Status get registeredInStatus => _registeredInStatus;

  Future<Map<String, dynamic>> login (String email, String password) async {
    var result;

    final Map<String, dynamic> loginData = {
      'user': {
        'email': email,
        'password': password,
      }
    };

    _loggedInStatus = Status.Authenticating;
    notifyListeners();

    Response response = await 
        http.post(Uri.parse("https://teamaduaba.azurewebsites.net/login"),
        body: json.encode(loginData),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);

        var userData = responseData['data'];

        User authUser = User.fromJson(userData);

        // UserPreferences().saveUser(authUser);

        _loggedInStatus = Status.LoggedIn;
        notifyListeners();

        result = {'status': true, 'message': 'Successful', 'user': authUser};
      } else {
        _loggedInStatus = Status.NotloggedIn;
        notifyListeners();
        result = {
          'status': false,
          'message': json.decode(response.body)['error']
        };
      }
      return result;
  }

   Future<Map<String, dynamic>> register(String email, String password, String passwordConfirmation) async {

    final Map<String, dynamic> registrationData = {
      'user': {
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation
      }
    };


    _registeredInStatus = Status.Registering;
    notifyListeners();

    Response response = await http.post(Uri.parse("https://teamaduaba.azurewebsites.net/register"),
        body: json.encode(registrationData),
        headers: {'Content-Type': 'application/json'});
        // .then((onValue);
        // .catchError(onError);
  }

  static Future<FutureOr> onValue(Response response) async {
    var result;
    final Map<String, dynamic> responseData = json.decode(response.body);

    if (response.statusCode == 200) {
      var userData = responseData['data'];

      User authUser = User.fromJson(userData);

      // UserPreferences().saveUser(authUser);
      result = {
        'status': true,
        'message': 'Successfully registered',
        'data': authUser
      };
    } else {

      result = {
        'status': false,
        'message': 'Registration failed',
        'data': responseData
      };
    }

    return result;
  }

  static onError(error) {
    print("the error is $error.detail");
    return {'status': false, 'message': 'Unsuccessful Request', 'data': error};
  }

}