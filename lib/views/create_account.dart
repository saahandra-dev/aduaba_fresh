import 'dart:convert';
import 'package:aduaba_fresh/models/user.dart';
import 'package:aduaba_fresh/utils/user_preference.dart';
import 'package:aduaba_fresh/views/homepage.dart';
import 'package:aduaba_fresh/views/sign_in.dart';
import 'package:aduaba_fresh/widgets/reusable_button_img.dart';
import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:aduaba_fresh/widgets/reusable_form_field.dart';
import 'package:aduaba_fresh/widgets/form_field_label.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class CreateAccount extends StatefulWidget {
  static String id = 'create_account';

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _showPassword = false;
  bool _confirmPassword = false;

  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

 

  Future<void> register() async {
    if (_passwordController.text == _confirmpasswordController.text 
        && _passwordController.text.isNotEmpty && _emailController.text.isNotEmpty
        && _firstNameController.text.isNotEmpty && _lastNameController.text.isNotEmpty && _phoneController.text.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            duration: Duration(milliseconds: 800),
            content: Text("Authenticating")));
      
      var response = await http.post(Uri.parse("https://teamaduaba.azurewebsites.net/Register"), 
          body: jsonEncode({
            "email": _emailController.text,
            "password": _passwordController.text,
            "firstName": _firstNameController.text,
            "lastName": _lastNameController.text,
            "phoneNumber": _phoneController.text
            }),
          headers: {
            "Register":"application/json",
            "Content-Type":"application/json"
          }
            );
           
            if(response.statusCode == 200) {
              Map<String, dynamic> decoded = json.decode(response.body);
              User user = User.fromJson(decoded);
              UserPreference.saveUser(user);
              Navigator.pushNamed(context, SignIn.id);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Credentials")));
              // print(response.body);
            }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: 
      Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Text("Fields cannot be blank"),
      )));
    }
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                      width: double.infinity,
                      height: 68,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Create \nyour account',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700
                          )
                          ),
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Color(0XFF3A953C).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(100.0)
                            ),
                            child: Icon(
                              Icons.person,
                              color: Color(0XFF3A953C),
                            ),
                          ),
                      ],),
                    ),
                    SizedBox(height: 24.0,),
                    ReusableButton(
                    text: 'Sign in with Google',
                    primary: Color(0XFFFFFFFF),
                    color: Colors.black,
                    fontweight: FontWeight.w500,
                    buttonImage: 'google',
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    sizedBox: 13.51,
                  ),
                  SizedBox(height: 24.0,),
                  ReusableButton(
                    text: 'Sign in with Facebook',
                    primary: Color(0XFF3D5B96),
                    fontweight: FontWeight.w500,
                    buttonImage: 'facebook',
                    sizedBox: 17.0,
                  ),
                  SizedBox(height: 24.0,),
                  ReusableButton(
                    text: 'Sign in Apple ID',
                    primary: Color(0XFF000000),
                    fontweight: FontWeight.w400,
                    buttonImage: 'apple',
                    sizedBox: 17.0,
                  ),
                  SizedBox(height: 24.0,),
                  Center(
                    child: Text(
                      '- OR REGISTER WITH MAIL -',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0
                      ),
                    ),
                  ),
                  SizedBox(height: 24.0,),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormFieldLabel(
                          text: 'First Name',
                        ),
                        SizedBox(height: 16.0,),
                        ReusableTextFormField(
                          keyboardType: TextInputType.name,
                          controller: _firstNameController,
                          onSaved: (String firstName) {
                          },
                          hintText: 'Enter first name',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your first name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 24.0,),
                        TextFormFieldLabel(
                          text: 'Last Name',
                        ),
                        SizedBox(height: 16.0,),
                        ReusableTextFormField(
                          keyboardType: TextInputType.name,
                          controller: _lastNameController,
                          hintText: 'Enter last name',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your last name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 24.0,),
                        TextFormFieldLabel(
                          text: 'Phone Number',
                        ),
                        SizedBox(height: 16.0,),
                        ReusableTextFormField(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(top:14.0),
                            child: Text('+234',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFFBABABA)
                            ),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          controller: _phoneController,
                          hintText: '',
                          validator: (value) {
                            if (value.length != 10)
                                return 'Mobile Number must be of 10 digit';
                              else
                                return null;
                            }
                        ),
                        SizedBox(height: 24.0,),
                        TextFormFieldLabel(
                          text: 'Email Address',
                        ),
                        SizedBox(height: 16.0,),
                        ReusableTextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          hintText: 'Enter email address',
                          validator: (val) => val.isEmpty || !val.contains('@') || !val.contains('.')
                          ? 'Please enter a valid email'
                          : null
                        ),
                        SizedBox(height: 24.0,),
                        TextFormFieldLabel(
                          text: 'Password',
                        ),
                        SizedBox(height: 16.0,),
                        TextFormField(
                          validator:  (value) {

                          String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                          RegExp regExp = new RegExp(pattern);
                          
                          if(value.isEmpty) {
                            return 'Please enter a password';
                          }
                            if (!regExp.hasMatch(value)) {
                              return 'must contain a special character, lower and uppercase \nand not be less than 8 characters';
                            } return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: _passwordController,
                          obscureText: !_showPassword,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _showPassword = !_showPassword;
                                });
                              },
                              child: Icon(
                                _showPassword ? Icons.visibility : Icons.visibility_off
                              ),
                            ),
                            
                            hintText: 'Enter Password',
                            hintStyle: TextStyle(
                              color: Color(0XFFBABABA),
                              fontSize: 15.0,
                            ),
                            fillColor: Color(0XFFF7F7F7),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide.none,
                          ),
                        )
                        ),
                      
                        
                        SizedBox(height: 24.0,),
                        TextFormFieldLabel(
                          text: 'Confirm Password',
                        ),
                        SizedBox(height: 16.0,),

                        TextFormField(
                          validator: (value) {
                            if(_passwordController.text == value){
                              return null;
                            } else {
                              return 'Password does not match';
                            }
                          },
                          controller: _confirmpasswordController,
                          obscureText: !_confirmPassword,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _confirmPassword = !_confirmPassword;
                                });
                              },
                              child: Icon(
                                _confirmPassword ? Icons.visibility : Icons.visibility_off
                              ),
                            ),
                            hintText: 'Enter Password',
                            hintStyle: TextStyle(
                              color: Color(0XFFBABABA),
                              fontSize: 15.0,
                            ),
                            fillColor: Color(0XFFF7F7F7),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide.none,
                          ),
                        )),

                        SizedBox(height: 24.0,),
                        ReusableButtonNoImg(
                          onpressed: () {
                            // await UserPreference.setUserFirstName(firstName);
                      //       _scaffoldKey.currentState.showSnackBar(
                      // new SnackBar(duration: new Duration(seconds: 4), content:
                      // new Row(
                      //   children: <Widget>[
                      //     new CircularProgressIndicator(),
                      //     new Text("  Signing-In...")
                      //   ],
                      // ),
                      // ));
                            if(_formKey.currentState.validate()) {
                              register();
                            }
                            
                          },
                          text: 'Create Account',
                          primary: Color(0XFF3A953C),
                          fontweight: FontWeight.w700,
                        )
                      ],
                    )
                  ),
                  SizedBox(height: 24.0,),
                  Center(
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, SignIn.id);
                        },
                        child: RichText(
                          text: TextSpan(
                            text: 'Have an account?', 
                            style: TextStyle(
                              color: Colors.black, 
                              fontSize: 14,
                              // fontWeight: FontWeight.w700
                              ),
                            children: <TextSpan>[
                              TextSpan(text: ' Sign in', 
                              style: TextStyle(
                                color: Colors.green, 
                                fontSize: 14,
                                fontWeight: FontWeight.w700
                                )
                              )
                            ] )
                        ),
                      ),
                    )
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}