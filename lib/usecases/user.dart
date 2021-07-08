class User {
  String email;
  String password;
  String firstName;
  String lastName;

  User({this.email, this.password, this.firstName, this.lastName});

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
      email: responseData['email'],
      password: responseData['password'],
      firstName: responseData['firstName'],
      lastName: responseData['lastName']
    );
  }

}

class AppUrl {
  static const String baseURL = "https://teamaduaba.azurewebsites.net";

  static const String login = baseURL + "/login";
  static const String register = baseURL + "/register";
  static const String forgotPassword = baseURL + "/update";
}