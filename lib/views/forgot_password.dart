import 'package:aduaba_fresh/views/sign_in.dart';
import 'package:aduaba_fresh/widgets/email_bottomsheet.dart';
import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:aduaba_fresh/widgets/sms_bottomsheet.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  static String id = 'forgot_password';

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60.0,),
            Container(
                    width: double.infinity,
                    height: 68,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Forgot Password \nto your account',
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
                          child: Image.asset(
                            'assets/images/password.png',
                            // scale: 17.0,
                          )
                        ),
                    ],),
                  ),
                  SizedBox(height: 16.0,),
                  Container(
                    width: 262.0,
                    height: 44.0,
                    child: Text(
                      'Select what contact details we use to reset your password',
                      style: TextStyle(
                        color: Color(0XFF999999),
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  SizedBox(height: 39,),
                  Expanded(
                    child:  ListView(children: [
                    GestureDetector(
                      onTap: () => showModalBottomSheet(
                        context: context, 
                        builder: (context) => ViaSMS()
                      ),
                      child: ListTile(
                        leading: Container(
                            width: 44.0,
                            height: 44.0,
                            decoration: BoxDecoration(
                              color: Color(0XFFE6F6EE),
                              borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: Icon(
                              Icons.phone_iphone_outlined,
                              color: Colors.green,
                            )
                          ),
                          title: Text('via sms:',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF10151A)
                          ),
                          ),
                          subtitle: Text('••• ••••  7767',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF999999)
                          ),
                          ),
                          trailing: Radio(
                            value: 1, 
                            groupValue: _value, 
                            onChanged: (value) {
                              setState(() {
                                _value = value;                 
                              });
                            }),
                      ),
                    ),
                    SizedBox(height: 24.0,),
                    GestureDetector(
                      onTap: () => showModalBottomSheet(
                        context: context, 
                        builder: (context) => ResetPassword()
                      ),
                      child: ListTile(
                        leading: Container(
                            width: 44.0,
                            height: 44.0,
                            decoration: BoxDecoration(
                              color: Color(0XFFE6F6EE),
                              borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: Icon(
                              Icons.email_sharp,
                              color: Colors.green,
                            )
                          ),
                          title: Text('via email:',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF10151A)
                          ),
                          ),
                          subtitle: Text('•••••••vid@gmail.com',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF999999)
                          ),
                          ),
                          trailing: Radio(
                            value: 2, 
                            groupValue: _value, 
                            onChanged: (value) {
                              _value = value;
                            }
                            ),
                      ),
                    ),
                  ],),),
                  ReusableButtonNoImg(
                  onpressed: () {
                    Navigator.pushNamed(context, SignIn.id);
                  },
                  text: 'Continue',
                  primary: Color(0XFF3A953C),
                  fontweight: FontWeight.w700,
                ),
                // 
        ],),
        
      ),
      
    );
  }
}

