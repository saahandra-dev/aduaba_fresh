class User {
  String email;
  String password;
  String firstName;
  String lastName;
  String imageUrl;
  String phoneNumber;

  User({
    this.email, 
    this.password, 
    this.firstName, 
    this.lastName,
    this.imageUrl,
    this.phoneNumber
  });

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
      email: responseData['email'],
      password: responseData['password'],
      firstName: responseData['firstName'],
      lastName: responseData['lastName'],
      imageUrl: responseData['imageUrl'],
      phoneNumber: responseData['phoneNumber']

    );
  }

}

class AppUrl {
  static const String baseURL = "https://teamaduaba.azurewebsites.net";

  static const String login = baseURL + "/login";
  static const String register = baseURL + "/register";
  static const String forgotPassword = baseURL + "/update";
}