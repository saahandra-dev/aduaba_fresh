import 'dart:convert';
import 'package:aduaba_fresh/models/product.dart';
import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/views/discover/discover_screen.dart';
import 'package:aduaba_fresh/widgets/bottom_nav.dart';
import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:aduaba_fresh/widgets/reusable_box_header.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  static String id = 'wishlist';

  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {

  @override
  void initState() {
    
    getWishList();

    super.initState();
  }

  List<Product> wishList = [];

  void getWishList() async {
    var response = await http.get(Uri.parse("https://teamaduaba.azurewebsites.net/GetCustomerWishList"));

    if (response.statusCode == 200) {
      // print(response.body);
      List<dynamic> decoded = json.decode(response.body);
      setState(() {
      wishList = decoded.map((e) => Product.fromJson(e)).toList();

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: ReusableBottomNav(),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 142.0),
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 0),
        child: Column(children: [
          ReusableBoxHeader(
            text: 'My Wishlist',
            onTap: () {
              Navigator.pushNamed(context, AccountDetails.id);
            },
            widget: Column(
              children: [
                SizedBox(height: 10.0,),
                Container(
                  child: Text('0 items listed',
                  style: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400
                  )
                  ),
                ),
              ],
            ),
          ),  
          ],),
        ),
      ),

      body: wishList.length > 0 ?
      ListView.builder(
        itemCount: wishList.length,
        itemBuilder: (context, index) {
          return  GestureDetector(
            child: Container(
              padding: EdgeInsets.only(top: 24.0, bottom: 28.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFFF5F5F5),
                    width: 1.0,
                    style: BorderStyle.solid
                  )
                )
              ),
                child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 75.0,
                    height: 78.0,
                    child: Image.network(wishList[index].shortDescription,),
                  ),
                  SizedBox(width: 16.0,),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WishlistBuilderText(
                            text: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',
                            color: Color(0xFF000000),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 5.0,),
                          WishlistBuilderText(
                            text: 'Emmanuel Produce',
                            color: Color(0xFFBBBBBB),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 5.0,),
                          Row(
                            children: [
                              WishlistBuilderText(
                                text: '₦35,000.00',
                                color: Color(0xFFF39E28),
                                fontSize: 13.0,
                                fontWeight: FontWeight.w700,
                              ),
                              SizedBox(width: 8.0,),
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.0),
                                child: WishlistBuilderText(
                                  text: '.',
                                  color: Color(0xFFD8D8D8),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 8.0,),
                              WishlistBuilderText(
                                text: 'In stock',
                                color: Color(0xFF3A953C),
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                          ])
                      ]),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete), 
                    onPressed: () {}
                  )
              ],),
            )
          ); 
        }  
        ): Container(     
          padding: EdgeInsets.only(bottom: 45.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 91.53,),
                Image.asset('assets/images/wishlist_heart.png'),
                SizedBox(height: 33.25,),
                Text('Your wishlist is empty',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF10151A)
                ),
                ),
                SizedBox(height: 16.0,),
                Text('Hit the green button down below \nto find interesting products',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF10151A)
                ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: ReusableButtonNoImg(
                    text: 'Discover products',
                    fontsize: 16.0,
                    fontweight: FontWeight.w700,
                    onpressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => DiscoverScreen()),
                      // );
                    },
                    primary: Color(0xFF3A953C),
                  ),
                )
              ],
            ),
          ),
        ));  
    }
}



class WishlistBuilderText extends StatelessWidget {
  WishlistBuilderText({this.text, this.color, this.fontSize, this.fontWeight});

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
    );
  }
}