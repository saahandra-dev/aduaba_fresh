import 'package:flutter/material.dart';
import 'reusable_button_no_img.dart';
import 'form_field_label.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({ Key key }) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _showPassword = false;
  bool _confirmPassword = false;
  
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
  padding: const EdgeInsets.all(24.0),
  child: ListView(
    shrinkWrap: true,
    children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(
        'Reset Password', 
        style: TextStyle(
          color: Color(0XFF3C673D),
          fontSize: 24.0,
          fontWeight: FontWeight.w700
        ),
        
      ),
      
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.close,
        size: 30.0,
        ),
      )
    ],),
    SizedBox(height: 24.0,),
    Container(
      width: 262.0,
      height: 44.0,
      child: Text(
        'Set the new password for your account so you can login and access the features',
        style: TextStyle(
          color: Color(0XFF999999),
          fontSize: 17.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    SizedBox(height: 24.0,),
    TextFormFieldLabel(
      text: 'Password',
    ),
    SizedBox(height: 16.0,),
    Container(
      height: 47.0,
      child: TextFormField(
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
      )),
    ),
    SizedBox(height: 24.0,),
    TextFormFieldLabel(
      text: 'Confirm Password',
    ),
    SizedBox(height: 16.0,),
    Container(
      height: 47.0,
      child: TextFormField(
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
    ),
    SizedBox(height: 24.0,),
    ReusableButtonNoImg(
      onpressed: () {},
      primary: Color(0XFF3A953C),
      text: 'Save password',
      fontweight: FontWeight.w700,
      fontsize: 16.0,
    ),
    
  ],),
);
  }
}
