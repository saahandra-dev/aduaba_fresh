import 'package:flutter/material.dart';

class BestSellingStack extends StatelessWidget {
  BestSellingStack({this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.0,
      margin: EdgeInsets.only(right: 16.0),
      child: Stack(
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 156.0,
              height: 156.0,
              child: Image.asset(image),
            ),
            SizedBox(height: 8.0),
            Text('Emmanuel Produce',
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w300
            ),
            ),
            SizedBox(height: 4.0,),
            SizedBox(
              width: 156.0,
              height: 48.0,
              child: Text('Herbsconnect Organic Acai Berry Powder Freeze Dried',
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000)
              ),
              ),
            ),
            SizedBox(height: 8.0),

            Row(children: [
              Text('₦35,000.00',
              style: TextStyle(
                color: Color(0xFFF39E28),
                fontSize: 13.0,
                fontWeight: FontWeight.w700,
              ),
              ),
              SizedBox(width: 4.0),
              Text('.',
              style: TextStyle(
                color: Color(0xFFD8D8D8),
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
              ),
              SizedBox(width: 4.0),
              Text('In stock',
              style: TextStyle(
                color: Color(0xFF3A953C),
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
              ),
              ),
            ],)
          ],),
          Positioned(
            top: 10.25,
            left: 130.5,
            right: 10.25,
            child: InkWell(
              onTap: () {},
              child: Image.asset('assets/images/heart.png')))
        ]),
    );
  }
}