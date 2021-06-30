// import 'dart:js';

import 'package:aduaba_fresh/models/onboarding_model.dart';
import 'package:aduaba_fresh/views/create_account.dart';
import 'package:aduaba_fresh/views/sign_in.dart';
import 'package:aduaba_fresh/widgets/reusableButton_noImg.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  static String id = 'onboarding';

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView.builder(
          itemCount: contents.length,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (_,i){
            return Stack(
              
              children: [
              Image.asset(contents[i].image,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 161,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: List.generate(
                              contents.length, 
                              (index) => buildDot(index), 
                              ),
                        ),
                      ),
                      SizedBox(height: 19.0,),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    
                  SizedBox(height: 9.0,),
                  Text(
                    contents[i].subtitle,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  ],
                  ),
                ),
              ),
            ],);
          }
        ),
        
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              
              children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, CreateAccount.id);
                },
                child: ReusableButtonNoImg(
                  text: 'Get Started',
                  primary: Color(0XFF3A953C),
                  onpressed: () {
                    Navigator.pushNamed(context, CreateAccount.id);
                  }
                ),
              ),
              SizedBox(height: 16.0,),
              InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, SignIn.id);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Have an account already?', 
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                            // fontWeight: FontWeight.w700
                            ),
                          children: <TextSpan>[
                            TextSpan(text: ' Sign In', 
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                              )
                            )
                          ] )
                      ),
                    )
            ],),
          ),
        )
      ],)
    );
  }

  Container buildDot(int index) {
    return Container(
              height: 10,
              width: 10,
              margin: EdgeInsets.only(right: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: currentIndex == index ? Color(0XFF3A953C) : Colors.white
              ),
            );
  }

}