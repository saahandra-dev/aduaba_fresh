// import 'package:aduaba_fresh/views/discover/discover_screen.dart';
// import 'package:flutter/material.dart';

// class ConfirmationScreen extends StatefulWidget {
//   @override
//   _ConfirmationScreenState createState() => _ConfirmationScreenState();
// }

// class _ConfirmationScreenState extends State<ConfirmationScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFE5E5E5),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Container(
//             color: Color(0xFFFFFFFF),
//             padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
//                   icon: Icon(
//                     Icons.arrow_back, color: Color(0xFF424347),
//                   ),
//                   onPressed: () => Navigator.of(context).pop(),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   "Checkout",
//                   style: TextStyle(
//                       fontSize: 24,
//                       color: Color(0xFF819272),
//                       fontWeight: FontWeight.w700),
//                 ),
//                 SizedBox(height: 15),        
//                 Stack(
//                   children: [
//                     Align(
//                         alignment: Alignment.centerLeft,
//                         child: Image.asset('assets/icons/filled.png')),
//                     Positioned(
//                       top: 9,
//                       left: 15,
//                       child: Container(
//                         width: MediaQuery.of(context).size.width * 0.5 - 38,
//                         child: Divider(
//                           color: Color(0xFF3A953C),
//                           thickness: 2,
//                           height: 0,
//                         ),
//                       ),
//                     ),
//                     Align(
//                         alignment: Alignment.topCenter,
//                         child: Image.asset('assets/icons/filled.png')
//                       ),
//                     Positioned(
//                       top: 9,
//                       right: 16,
//                       child: Container(
//                         width: MediaQuery.of(context).size.width * 0.5 - 45,
//                         child: Divider(
//                           color: Color(0xFF3A953C),
//                           thickness: 2,
//                           height: 0,
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.topRight,
//                       child: Image.asset('assets/icons/filled.png')
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10),   
//                 Stack(
//                   children: [
//                     Align(
//                       alignment: Alignment.topLeft,
//                       child: Text(
//                         "Billing",
//                         style: TextStyle(
//                           color: Color(0xFF999999),
//                           fontSize: 13,
//                           fontWeight: FontWeight.w400
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Text(
//                         "Payment",
//                         style: TextStyle(
//                           color: Color(0xFF999999),
//                           fontSize: 13,
//                           fontWeight: FontWeight.w400
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.topRight,
//                       child: Text(
//                         "Confirmation",
//                         style: TextStyle(
//                           color: Color(0xFF999999),
//                             fontSize: 13,
//                           fontWeight: FontWeight.w400
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(top: 40, bottom: 40),
//                     child: Image.asset(
//                       "assets/icons/order_cart.png",
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   Text(
//                     "Order Confirmed",
//                     style: TextStyle(
//                         color: Color(0xFF424347),
//                         fontSize: 24,
//                         fontWeight: FontWeight.w700),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(top: 20, bottom: 10),
//                     child: Text(
//                       "Thank you for choosing Aduaba Fresh.",
//                       style: TextStyle(
//                           color: Color(0xFF10151A),
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(bottom: 20),
//                     child: Text(
//                       "Your order #2345 has been confirmed ",
//                       style: TextStyle(
//                           color: Color(0xFF10151A),
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(bottom: 20, right: 20, left: 20, top: 40),
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 60,
//                 child: RaisedButton(
//                   color: Color(0xFF3A953C),
//                   textColor: Color(0xFFFFFFFF),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius. circular(10)
//                   ),
//                   child: Text(
//                     "Track Order",
//                     style: TextStyle(
//                       color: Color(0xFFFFFFFF), 
//                       fontSize: 16, 
//                       fontWeight: FontWeight.w700, 
//                       fontStyle: FontStyle.normal
//                     ),
//                   ),
//                   onPressed: () {},
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(bottom: 50, right: 20, left: 20),
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 60,
//                 child: RaisedButton(
//                   color: Color(0xFFE5E5E5),
//                   textColor: Color(0xFF10151A),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius. circular(10),
//                   ),
//                   child: Text(
//                     "Continue Shopping",
//                     style: TextStyle(
//                       color: Color(0xFF10151A), 
//                       fontSize: 16, 
//                       fontWeight: FontWeight.w700, 
//                       fontStyle: FontStyle.normal
//                     ),
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (BuildContext context) =>
//                           DiscoverScreen(),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
      
//     );
//   }
// }