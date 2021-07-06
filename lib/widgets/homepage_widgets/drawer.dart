import 'package:aduaba_fresh/views/categories.dart';
import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/views/wishlist.dart';
import 'package:aduaba_fresh/widgets/homepage_widgets/user_name.dart';
import 'package:flutter/material.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: SafeArea(
        child: Container(
          color: Color(0xFFFFFFFF),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(39.0, 40.0, 39.0, 27.0),
                child: Column(
                  children: [
                    Container(
                      width: 304.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                      ),
                      child: Row(children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: Colors.grey
                          ),
                          child: Image.asset('assets/images/profile_picture.png'),
                        ),
                        SizedBox(width: 16.0,),
                        UserName(
                          text: 'Andrea Charles',
                        ),
                      ],)
                    ),
                    SizedBox(height: 38.0,),
                    DrawerProfileLink(
                      image: 'assets/images/profile_cart.png',
                      title: 'Cart'
                    ),
                    SizedBox(height: 33.0,),
                    DrawerProfileLink(
                      image: 'assets/images/profile_categories.png',
                      title: 'Categories',
                      onTap: () {
                        Navigator.pushNamed(context, Categories.id);
                      },
                    ),
                    SizedBox(height: 33.0,),
                    DrawerProfileLink(
                      image: 'assets/images/profile_heart.png',
                      title: 'My Wishlist',
                      onTap: () {
                        Navigator.pushNamed(context, WishList.id);
                      },
                    ),
                    SizedBox(height: 33.5,),
                    DrawerProfileLink(
                      image: 'assets/images/profile_cart.png',
                      title: 'Orders'
                    ),
                    SizedBox(height: 32.5,),
                    DrawerProfileLink(
                      image: 'assets/images/profile_person.png',
                      title: 'Account Details',
                      onTap: () {
                        Navigator.pushNamed(context, AccountDetails.id);
                      },
                    ),

                ],),
              ),
              Container(
              width: double.infinity,
              height: 48.0,
              color: Color(0xFFF9F9F9),
              child: Padding(
                padding:  EdgeInsets.fromLTRB(40.0, 14.0, 200.0, 16.0),
                child: Text('Support',
                style: TextStyle(
                  
                  color: Color(0xFF979797),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400
                  ),
                  ),
              ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(36.0, 44.0, 36.0, 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Contact Us',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF10151A)
                    ),
                    ),
                  ),
                  SizedBox(height: 32.0,),
                  Text('Help & FAQs',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF10151A)
                  ),
                  ),
                  SizedBox(height: 73.16,),
                  Center(
                    child: Image.asset('assets/images/profile_logo.png')
                    ),
                  SizedBox(height: 31.14,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    DrawerBottomText(
                      text: 'Privacy Policy',
                    ),
                    DrawerBottomText(
                      text: '.',
                    ),
                    DrawerBottomText(
                      text: 'Terms of Use',
                    ),
                  ],)
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class DrawerProfileLink extends StatelessWidget {
  DrawerProfileLink({this.image, this.title, this.onTap});
  final String image;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(children: [
        Image.asset(image),
        SizedBox(width: 19.3,),
        Text(title,
        style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.w400,
          color: Color(0xFF10151A)
        ),
        ),
      ],),
    );
  }
}

class DrawerBottomText extends StatelessWidget {
  DrawerBottomText({this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      color: Color(0xFF999999),
      fontSize: 14.0,
      fontWeight: FontWeight.w400
    ),
    );
  }
}