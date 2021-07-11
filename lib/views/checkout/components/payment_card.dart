// import 'package:aduaba_fresh/models/card_model.dart';
// import 'package:aduaba_fresh/views/checkout/confirmation_screen.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';


// class PaymentCard extends StatefulWidget {
//   @override
//   _PaymentCardState createState() => _PaymentCardState();
// }

// class _PaymentCardState extends State<PaymentCard> {
//   int _currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         CarouselSlider(
//           options: CarouselOptions(
//             height: 180.0,
//             enlargeCenterPage: true,
//             enableInfiniteScroll: true,
//             autoPlayAnimationDuration: Duration(milliseconds: 800),
//             viewportFraction: 0.8,
//             onPageChanged: (index, reason) {
//               setState(
//                 () {
//                   _currentIndex = index;
//                 },
//               );
//             },
//           ),
//           items: cards.asMap().entries.map((item) {
//             final color = categoryColors[item.key % categoryColors.length];
//             return Builder(builder: (context) {
//               return GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     cards.add(CardModel(
//                         cardType: item.value.cardType,
//                         name: item.value.name,
//                         expDate: item.value.expDate,
//                         cardNo: item.value.cardNo));
//                   });
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (BuildContext context) => ConfirmationScreen()),
//                   );
//                 },
//                 child: Container(
//                   margin: EdgeInsets.symmetric(vertical: 4),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: color,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey,
//                         blurRadius: 2,
//                       ),
//                     ],
//                   ),
//                   child: Stack(
//                     children: [
//                       item.value.cardType == "VISA"
//                           ? Align(
//                               alignment: Alignment.topLeft,
//                               child: Padding(
//                                 padding: const EdgeInsets.only(left: 20, top: 30),
//                                 child: Image.asset("assets/images/visa_card.png")
//                               ),
//                             )
//                           : Align(
//                               alignment: Alignment.topLeft,
//                               child: Padding(
//                                 padding: const EdgeInsets.only(left: 20, top: 20, right: 200),                               
//                                     child: Image.asset("assets/images/mastercardlogo.jpeg"),
//                               ),
//                             ),
//                       Positioned(
//                         top: 70,
//                         left: 20,
//                         right: 20,
//                         child: Container(
//                           width: MediaQuery.of(context).size.width,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 "${item.value.cardNo.substring(0, 4)}",
//                                 style: TextStyle(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w400,
//                                     color: Color(0xFFFFFFFF)),
//                               ),
//                               Text(
//                                 " •••• ",
//                                 style: TextStyle(
//                                     fontSize: 24.15,
//                                     fontWeight: FontWeight.w400,
//                                     color: Color(0xFFFFFFFF),
//                                     letterSpacing: 1.66
//                                 ),
//                               ),
//                               Text(
//                                 " •••• ",
//                                 style: TextStyle(
//                                     fontSize: 24.15,
//                                     fontWeight: FontWeight.w400,
//                                     color: Color(0xFFFFFFFF),
//                                     letterSpacing: 1.66
//                                 ),
//                               ),
//                               Text(
//                                 "${item.value.cardNo.substring(12, 16)}",
//                                 style: TextStyle(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w400,
//                                     color: Color(0xFFFFFFFF)),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         top: 120,
//                         left: 20,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Card Holder",
//                               style: TextStyle(
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.w400,
//                                   color: Color(0xFFFFFFFF)),
//                             ),
//                             Text(
//                               "${item.value.name}",
//                               style: TextStyle(
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w400,
//                                   color: Color(0xFFFFFFFF)),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Positioned(
//                         top: 120,
//                         right: 20,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Expires",
//                               style: TextStyle(
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.w400,
//                                   color: Color(0xFFFFFFFF)),
//                             ),
//                             Text(
//                               "${item.value.expDate}",
//                               style: TextStyle(
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w400,
//                                   color: Color(0xFFFFFFFF)),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             });
//           }).toList(),
//         ),
//         SizedBox(height: 30),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: cards.map((urlOfItem) {
//             int index = cards.indexOf(urlOfItem);
//             return Container(
//               width: 6.0,
//               height: 6.0,
//               margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: _currentIndex == index
//                     ? Color(0xFF989898)
//                     : Color(0xFFD8D8D8),
//               ),
//             );
//           }).toList(),
//         ),
//         SizedBox(height: 30),
//         Divider(
//           color: Colors.grey
//         ),
//       ],
//     );
//   }
// }

// List<Color> categoryColors = [
//   Color(0xFFE75A21),
//   Color(0xFF7AA0DA),
//   Color(0xFFEB7777),
// ];