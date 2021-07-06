import 'package:aduaba_fresh/views/sign_in.dart';
import 'package:aduaba_fresh/widgets/reusable_button_img.dart';
import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:aduaba_fresh/widgets/reusable_form_field.dart';
import 'package:aduaba_fresh/widgets/form_field_label.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  static String id = 'create_account';

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  TextFormFieldLabel(
                    text: 'First Name',
                  ),
                  ReusableTextFormField(
                    hintText: 'Enter first name',
                  ),
                  SizedBox(height: 24.0,),
                  TextFormFieldLabel(
                    text: 'Last Name',
                  ),
                  ReusableTextFormField(
                    hintText: 'Enter last name',
                  ),
                  SizedBox(height: 24.0,),
                  TextFormFieldLabel(
                    text: 'Email Address',
                  ),
                  ReusableTextFormField(
                    hintText: 'Enter email address',
                  ),
                  SizedBox(height: 24.0,),
                  TextFormFieldLabel(
                    text: 'Password',
                  ),
                  ReusableTextFormField(
                    hintText: 'Enter password',
                  ),
                  SizedBox(height: 24.0,),
                  TextFormFieldLabel(
                    text: 'Confirm Password',
                  ),
                  ReusableTextFormField(
                    hintText: 'Enter password',
                  ),
                  SizedBox(height: 24.0,),
                  ReusableButtonNoImg(
                    onpressed: () {},
                    text: 'Create Account',
                    primary: Color(0XFF3A953C),
                    fontweight: FontWeight.w700,
                  ),
                  SizedBox(height: 24.0,),
                  Center(
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