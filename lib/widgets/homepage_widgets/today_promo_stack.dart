import 'package:flutter/material.dart';

class TodayPromoStack extends StatelessWidget {
  const TodayPromoStack({
    this.productBrand
  });
  final String productBrand;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 181,
      margin: EdgeInsets.only(right: 16,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xFFF7F7F7)
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18.0, 18.0, 0.0, 18.0),
        child: Stack(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(productBrand,
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF3A953C)
                          ),
                          ),
                          SizedBox(height: 2.0,),
                          Text('exclusive \nbrands',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF10151A)
                          ),
                          ),
                          SizedBox(height: 8.0,),
                          Text('Visit our shop for a complete \nlist of our products',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF999999)
                          ),
                          ),
                          SizedBox(height: 9.5,),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Shop now',
                            style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF8AB543)
                            ),
                            ),
                            SizedBox(width: 17.62,),
                            Image.asset('assets/images/forward_arrow_ios.png')
                          ],)
                      ],),
                    ),
                   
                  ],
                ),
                SizedBox(width: 16,),
                Container(
                  width: 127.0,
                  height: 145.0,
                  child: Image.asset('assets/images/today_promo.png'))

            ],)
        ],),
      ),
    );
  }
}