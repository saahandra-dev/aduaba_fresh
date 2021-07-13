// import 'package:aduaba_fresh/views/checkout/checkout_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:aduaba_fresh/models/cart_model.dart';



// class Body extends StatefulWidget {
//   final CartModel demoCart;
  
//   const Body(
//       {Key key, this.demoCart}) 
//       : super(key: key); 
//   @override
//   _BodyState createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
//       child: Column(
//       children:[
//         Expanded(
//           child: ListView.builder(
//             itemCount: demoCart.length,
//             itemBuilder: (context, index) =>
//              Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Checkbox(
//                 materialTapTargetSize:
//                 MaterialTapTargetSize.shrinkWrap,
//                 activeColor: Colors.blue,
//                 checkColor: Colors.white,
//                 value: true,
//                 tristate: false,
//                 onChanged: (value) {},
//               ),
//               Container(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 120,
//                       child: Column(
//                         crossAxisAlignment:
//                         CrossAxisAlignment.start,
//                         // mainAxisAlignment:
//                         //     MainAxisAlignment.spaceAround,
//                         children: [
//                           Container(
//                             width: 250,
//                             child: Text(
//                               demoCart[index].product.description,
//                               style: TextStyle(
//                                 color: Color(0xFF000000), 
//                                 fontSize: 13, 
//                                 fontWeight: FontWeight.w500, 
//                                 fontStyle: FontStyle.normal, 
//                                 letterSpacing: 0.3
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Text(
//                             demoCart[index].product.title,
//                             style: TextStyle(
//                               color: Color(0xFF819272), 
//                               fontSize: 10, 
//                               fontWeight: FontWeight.w300, 
//                               fontStyle: FontStyle.normal
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Row(
//                           mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "\₦${demoCart[index].product.price}",
//                               style: TextStyle(
//                                 color: Color(0xFFF39E28), 
//                                 fontSize: 13, 
//                                 fontWeight: FontWeight.w700, 
//                                 fontStyle: FontStyle.normal
//                               ),
//                             ),
//                             SizedBox(width: 5),
//                             Padding(
//                               padding: EdgeInsets.only(left: 10, right: 10),
//                               child: Container(
//                                 height: 3,
//                                 width: 3,
//                                 decoration:  BoxDecoration(
//                                   color: Color(0xFFD8D8D8),
//                                   shape: BoxShape.circle,
//                                 ),
//                               ),
//                             ),
//                             Text(
//                               demoCart[index].product.status,
//                               style: TextStyle(
//                                 color: Color(0xFF3A953C), 
//                                 fontSize: 13, 
//                                 fontWeight: FontWeight.w400, 
//                                 fontStyle: FontStyle.normal,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 10),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             InkWell( onTap: () {
//                               setState(() { demoCart[index].product.qty--;
//                               });
//                             },
//                             child: Container(
//                               height: 32,
//                               width: 32,
//                               color: Colors.grey.shade200,
//                               child: Center(
//                                 child: Icon(
//                                   Icons.remove,
//                                   color: Colors.grey,
//                                 )),
//                               ),
//                             ),
//                             Container(
//                               height: 32,
//                               width: 32,
//                               color: Colors.grey.shade200,
//                               padding: EdgeInsets.all(5),
//                                 child: Center(
//                                   child: Text(
//                                     "${demoCart[index].product.qty}",
//                                     style: TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.grey)
//                                     ),
//                                   ),
//                                 ),
//                               InkWell(
//                                 onTap: () {
//                                   setState(() {
//                                     demoCart[index].product.qty++;
//                                   });
//                                 },
//                               child: Container(
//                                 height: 32,
//                                 width: 32, 
//                                 color: Colors.grey.shade200,
//                                 child: Center(
//                                   child: Icon(
//                                     Icons.add,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                               ),
//                               ),
//                               SizedBox(width: 8,),                                                
//                               InkWell(
//                                 onTap: () {},
//                                 child: Container(
//                                   height: 32,
//                                   width: 32,
//                                   color: Colors.grey.shade200,
//                                   child: Center(
//                                     child: Icon(
//                                       Icons.delete,
//                                       size: 15,
//                                       color: Colors.grey
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // ),
//               SizedBox(
//                 height: 60.0,
//                 width: 60.0,
//                 child: Image.asset(demoCart[index].product.image),
//               ),                             
//             ],
//           ),
//           Divider(color: Colors.grey),
//           SizedBox(height: 24),
//         ],
//     ),      
//           ),
//         ),
        
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Container(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Total ${demoCart.length} Items",
//                         style: TextStyle(
//                             color: Color(0xFF000000),
//                             fontSize: 13,
//                             fontWeight: FontWeight.w400),
//                       ),
//                       Text(
//                         "\₦${35000.00}",
//                         style: TextStyle(
//                             color: Color(0xFF000000),
//                             fontSize: 17,
//                             fontWeight: FontWeight.w700),
//                       ),
//                     ],
//                   ),
//                 ),
//                       SizedBox(height: 20),
//                       SizedBox(
//                         width: 80,
//                         height: 60,
//                         child: RaisedButton(
//                           color: Color(0xFF3A953C),
//                           textColor: Color(0xFFFFFFFF),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius. circular(10)
//                           ),
//                           elevation: 0,
//                           child: Text(
//                             "Proceed to Checkout",
//                             style: TextStyle(
//                               color: Color(0xFFFFFFFF), 
//                               fontSize: 16, 
//                               fontWeight: FontWeight.w700, 
//                               fontStyle: FontStyle.normal
//                             ),
//                           ),
//                           onPressed: () {Navigator.push
//                             (context,
//                               MaterialPageRoute(
//                                 builder: (BuildContext context) =>
//                                 CheckoutScreen()
//                               ),
//                             );
//                           },
//                         ),
//                       ),        
//                       SizedBox(height: 20),
//                       SizedBox( 
//                         width: 80,
//                         height: 60,
//                         child: RaisedButton(
//                           color: Colors.grey.shade200,
//                           textColor: Color(0xFF000000),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius. circular(10)
//                           ),
//                           elevation: 0,
//                           child: Text(
//                             "Continue Shopping",
//                             style: TextStyle(
//                               fontSize: 16, 
//                               fontWeight: FontWeight.w700, 
//                               fontStyle: FontStyle.normal
//                             ),
//                           ),
//                           onPressed: () {},
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             );       
//   }
// }