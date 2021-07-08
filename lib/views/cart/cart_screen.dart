import 'package:flutter/material.dart';
import 'package:aduaba_fresh/models/cart_model.dart';

import 'components/body.dart';


class CartScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          leading: IconButton(
            padding: EdgeInsets.only(top: 20, bottom: 0),
            icon: Icon(Icons.arrow_back, color: Color(0xFF424347)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: Text(
                      'Cart',
                      style: TextStyle(color: Color(0xFF819272), fontSize: 24.0, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal),
                    ),
                  ),
                   Row(                     
                      children: [
                        Container(
                          //padding: EdgeInsets.only(top: 15),
                          child: Text(
                            '18 items listed',
                            style: TextStyle(color: Color(0xFF819272)),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                icon:Icon(Icons.check),
                                color: Color(0xFF819272),
                                onPressed: () {}
                              ),
                              Text(
                                'Select All', 
                                style: TextStyle(color: Color(0xFF819272)),
                              ),                               
                            ],
                          ),
                        ),

                        TextButton.icon(
                           onPressed: () {

                           },
                           clipBehavior: Clip.none,
                           icon: Icon(
                             Icons.delete_outline,
                             color: Color(0xFF819272),
                           ),
                           label: Text('Delete Selected',
                           style: TextStyle(color: Color(0xFF819272)
                           ),
                           )
                         ),                     
                      ],
                    ),                 
                ],
              ),
            ),
          ),
        ),
      ),
      body: Body(),
    );
  }
}
