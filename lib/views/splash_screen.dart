import 'dart:async';

import 'package:aduaba_fresh/views/onboarding.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  // const SplashScreen({ Key key }) : super(key: key);
  static String id = 'splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => Onboarding()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
          
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset('assets/images/image_left.png')
                  ),
                  Align(
              alignment: Alignment.bottomRight,
              child: Image.asset('assets/images/image_right.png')
              ),
              ],
            ),
          ),
      ],),
    );
  }
}
  

 
