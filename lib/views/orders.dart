import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/views/order_summary.dart';
import 'package:aduaba_fresh/widgets/reusableButton_noImg.dart';
import 'package:aduaba_fresh/widgets/reusable_box_header.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({ Key key }) : super(key: key);
  static String id = 'orders';

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(children: [
          ReusableBoxHeader(
            text: 'My Orders',
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
          Expanded(child: wishListBody())
          ],),
      ),
    );
  }
}



wishListBody() {
      var wishList = [];
      return wishList.isNotEmpty ? ListView.builder(
        itemCount: wishList.length,
        itemBuilder: (context, index) {
          return  GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, OrderSummary.id);
            },
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
                    child: Image.asset('assets/images/wishlist_image.png'),
                  ),
                  SizedBox(width: 16.0,),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WishlistBuilderText(
                            text: 'Order #: 341924186',
                            color: Color(0xFF000000),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 5.0,),
                          WishlistBuilderText(
                            text: 'On 22 January, 2020 1:15 pm ',
                            color: Color(0xFFBBBBBB),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 21.0,),
                          WishlistBuilderText(
                            text: 'Estimated Delivery Date on 21 Dec',
                            color: Color(0xFFF2902F),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                          
                      ]),
                    ),
                  ),
              ],),
            )
          ); 
        }
        )  
        :Container(     
          padding: EdgeInsets.only(bottom: 45.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 91.53,),
                Image.asset('assets/images/orders_cart.png'),
                SizedBox(height: 33.25,),
                Text('No orders yet',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF10151A)
                ),
                ),
                SizedBox(height: 16.0,),
                Text('Hit the green button down below \nto create an order',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF10151A)
                ),
                ),
                Spacer(),
                ReusableButtonNoImg(
                  text: 'Start Ordering',
                  fontsize: 16.0,
                  fontweight: FontWeight.w700,
                  onpressed: () {},
                  primary: Color(0xFF3A953C),
                )
              ],
            ),
          ),
        );  
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