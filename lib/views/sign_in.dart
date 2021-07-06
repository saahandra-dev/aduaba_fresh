import 'package:aduaba_fresh/views/create_account.dart';
import 'package:aduaba_fresh/views/forgot_password.dart';
import 'package:aduaba_fresh/views/homepage.dart';
import 'package:aduaba_fresh/widgets/reusable_button_img.dart';
import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:aduaba_fresh/widgets/reusable_form_field.dart';
import 'package:aduaba_fresh/widgets/form_field_label.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  static String id = 'sign_in.dart';

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 68,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sign in \nto your account',
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
                SizedBox(height: 48.0,),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    TextFormFieldLabel(
                      text: 'Email Address',
                    ),
                    SizedBox(height: 24.0,),
                    ReusableTextFormField(
                      hintText: 'Enter Email',
                      validator: (val) => val.isEmpty || !val.contains('@') || !val.contains('.')
                      ? 'Enter a valid email'
                      : null
                    ),
                    SizedBox(height: 24.0,),
                    TextFormFieldLabel(
                      text: 'Password',
                    ),
                    SizedBox(height: 24.0,),
                    ReusableTextFormField(
                      hintText: 'Enter Password',
                    ),
                    SizedBox(height: 24.0,),
                  ],),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ForgotPassword.id);
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0
                      ),
                    ),),
                    ),
                SizedBox(height: 24.0,),
                ReusableButtonNoImg(
                  text: 'Login',
                  onpressed: () {
                    Navigator.pushNamed(context, HomePage.id);
                  },
                  primary: Color(0XFF3A953C),
                  fontweight: FontWeight.w700,
                ),
                SizedBox(height: 24.0,),
                Text(
                  '-OR SIGN IN WITH SOCIALS-',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0
                  ),
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
                
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, CreateAccount.id);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account?', 
                        style: TextStyle(
                          color: Colors.black, 
                          fontSize: 14,
                          // fontWeight: FontWeight.w700
                          ),
                        children: <TextSpan>[
                          TextSpan(text: ' Get Started', 
                          style: TextStyle(
                            color: Colors.green, 
                            fontSize: 14,
                            fontWeight: FontWeight.w700
                            )
                          )
                        ] )
                    ),
                  )
                ),

            ],),
          ),
        ),
      ),
    );
  }
  
}


