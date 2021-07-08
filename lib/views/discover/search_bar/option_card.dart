import 'package:flutter/material.dart';
import 'package:aduaba_fresh/models/product.dart';

class OptionCard extends StatelessWidget {
  final Product product;
  final Function press;
  const OptionCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.only(left:10, right: 10, bottom: 20),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 80.0,
                  width: 100.0, // fixed width and height
                  child: Image.asset(product.image),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: Text(
                                product.description,
                                style: TextStyle(
                                  color: Color(0xFF000000), 
                                  fontSize: 15, 
                                  fontWeight: FontWeight.w400, 
                                  fontStyle: FontStyle.normal, 
                                  letterSpacing: 0.3
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                            product.title,
                            style: TextStyle(
                              color: Color(0xFF819272), 
                              fontSize: 13, 
                              fontWeight: FontWeight.w400, 
                              fontStyle: FontStyle.normal
                            ),
                            ),  
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  "\₦${product.price}",
                                  style: TextStyle(
                                    color: Color(0xFFF39E28), 
                                    fontSize: 13, 
                                    fontWeight: FontWeight.w700, 
                                    fontStyle: FontStyle.normal
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, right:  10),
                                  child: Container(
                                    height: 3,
                                    width: 3,
                                    decoration:  BoxDecoration(
                                      color: Color(0xFFD8D8D8),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    product.status,
                                    style: TextStyle(
                                      color: Color(0xFF3A953C), 
                                      fontSize: 15, 
                                      fontWeight: FontWeight.w400, 
                                      fontStyle: FontStyle.normal
                                    ),
                                  ),
                                ),
                              ],
                            ),     
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
        ),
      ),
    );
  }
}
            
