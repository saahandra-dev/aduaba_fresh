// import 'package:aduaba_fresh/views/checkout/shipping_address_screen.dart';
// import 'package:flutter/material.dart';


// class CheckoutScreen extends StatefulWidget {
//   @override
//   _CheckoutScreenState createState() => _CheckoutScreenState();
// }

// class _CheckoutScreenState extends State<CheckoutScreen> {
//   int _n = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFE5E5E5),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//         Container(
//           color: Color(0xFFFFFFFF),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//           padding: EdgeInsets.fromLTRB(8, 40, 20, 10),
//           child: IconButton(
//             icon: Icon(Icons.arrow_back, color: Color(0xFF424347)),
//             onPressed: () => Navigator.of(context).pop(),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.only(left: 20, bottom: 20),
//           child: Text(
//             'Checkout',
//             style: TextStyle(
//               color: Color(0xFF819272), 
//               fontSize: 24.0, fontWeight: 
//               FontWeight.w700, 
//               fontStyle: FontStyle.normal
//             ),
//           ),
//         ),
//             ],
//           ),
//             ),
//             SizedBox(height: 20),
//           Expanded(
//             child: ListView.builder(
//               itemCount: 2,
//               itemBuilder: (_, index) {
//                 return Container(
//                   margin: EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   height: 120,
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                     children: [
//                                       Container(
//                                         width: 250,
//                                         child: Text(
//                                           "Herbsconnect Organic Acai Berry Powder Freeze Dried",
//                                           style: TextStyle(
//                                             fontSize: 17,
//                                             fontWeight: FontWeight.w700,
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Text(
//                                         "Emmanuel Produce",
//                                         style: TextStyle(
//                                           fontSize: 13,
//                                           fontWeight: FontWeight.w400,
//                                           letterSpacing: 1.2,
//                                           color: Color(0xFFBBBBBB),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Text(
//                                         "Quantity: 1",
//                                         style: TextStyle(
//                                           fontSize: 13,
//                                           fontWeight: FontWeight.w400,
//                                           letterSpacing: 1.2,
//                                           color: Color(0xFFBBBBBB),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Text(
//                                             "₦35,000.00",
//                                             style: TextStyle(
//                                               fontSize: 13,
//                                               fontWeight: FontWeight.w700,
//                                               letterSpacing: 1.2,
//                                               color: Color(0xFFF39E28),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding: EdgeInsets.only(left: 10, right: 10),
//                                             child: Container(
//                                               height: 3,
//                                               width: 3,
//                                               decoration:  BoxDecoration(
//                                                 color: Color(0xFFD8D8D8),
//                                                 shape: BoxShape.circle,
//                                               ),
//                                             ),
//                                           ),
//                                           Text(
//                                             "In stock",
//                                             style: TextStyle(
//                                               fontSize: 15,
//                                               fontWeight: FontWeight.w400,
//                                               color: Color(0xFFF3A953C),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           // ),
//                           Container(
//                             width: 60,
//                             height: 60,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(5),
//                               image: DecorationImage(
//                                 image: AssetImage(
//                                   "assets/images/image_1.png",
//                                 ),
//                                 fit: BoxFit.fill,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Divider(
//                         color: Colors.grey,
//                       ),
//                       SizedBox(height: 15),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(left: 20, right: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Divider(color: Colors.grey),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 7, top: 40),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Order",
//                         style: TextStyle(
//                             color: Color(0xFF000000),
//                             fontSize: 13,
//                             fontWeight: FontWeight.w400),
//                       ),
//                       Text(
//                         "₦35,000.00",
//                         style: TextStyle(
//                             color: Color(0xFF000000),
//                             fontSize: 13,
//                             fontWeight: FontWeight.w400),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 7),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Delivery",
//                         style: TextStyle(
//                             color: Color(0xFF000000),
//                             fontSize: 13,
//                             fontWeight: FontWeight.w400),
//                       ),
//                       Text(
//                         "₦350.00",
//                         style: TextStyle(
//                           color: Color(0xFF000000),
//                           fontSize: 13,
//                           fontWeight: FontWeight.w400
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 38),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Summary",
//                         style: TextStyle(
//                           color: Color(0xFF000000),
//                           fontSize: 17,
//                           fontWeight: FontWeight.w700
//                         ),
//                       ),
//                       Text(
//                         "₦35,350.00",
//                         style: TextStyle(
//                           color: Color(0xFF000000),
//                           fontSize: 17,
//                           fontWeight: FontWeight.w700
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 30),
//                   child: SizedBox(
//                     width: double.infinity,
//                     height: 60,
//                     child: RaisedButton(
//                       color: Color(0xFF3A953C),
//                       textColor: Color(0xFFFFFFFF),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius. circular(10)
//                       ),
//                       elevation: 0,
//                       child: Text(
//                         "Continue",
//                         style: TextStyle(
//                           color: Color(0xFFFFFFFF), 
//                           fontSize: 16, 
//                           fontWeight: FontWeight.w700, 
//                           fontStyle: FontStyle.normal
//                         ),
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (BuildContext context) =>
//                               ShippingAddressScreen(),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }