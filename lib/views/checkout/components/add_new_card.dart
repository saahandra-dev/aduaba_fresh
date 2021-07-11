// import 'package:aduaba_fresh/views/checkout/payment_screen.dart';
// import 'package:flutter/material.dart';



// class AddNewCard extends StatefulWidget {
//   const AddNewCard({Key key}) : super(key: key);

//   @override
//   _AddNewCardState createState() => _AddNewCardState();
// }

// class _AddNewCardState extends State<AddNewCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFE5E5E5),
//       body: SingleChildScrollView( 
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//             Container(
//               color: Color(0xFFFFFFFF),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: 8, top: 20, bottom: 10),
//                     child: IconButton(
//                       icon: Icon(Icons.arrow_back, color: Color(0xFF424347)),
//                       onPressed: () => Navigator.of(context).pop(),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 20, bottom: 20),
//                     child: Text(
//                       'New Card',
//                       style: TextStyle(
//                         color: Color(0xFF819272), 
//                         fontSize: 24.0, 
//                         fontWeight: FontWeight.w700, 
//                         fontStyle: FontStyle.normal
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//                   SizedBox(height: 20),
//                   Container(
//                     height: 220,
//                     width: 180,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                           "assets/images/card.png",
//                         ),
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.transparent,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Divider(
//                     color: Colors.grey,
//                   ),
//                   Container(
//                     padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                   Text(
//                     "Name on card",
//                     style: TextStyle(
//                         fontSize: 15,
//                         color: Color(0xFF10151A),
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 15),
//                   buildInputField(text: 'Avcan Doqanlar'),
//                   SizedBox(height: 15),
//                   Text(
//                     "Card Number",
//                     style: TextStyle(
//                         fontSize: 15,
//                         color: Color(0xFF10151A),
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 15),
//                   buildInputField(text: '3282 .... .... 3282'),
//                   SizedBox(height: 15),
//                   Text(
//                     "Expiry Date",
//                     style: TextStyle(
//                         fontSize: 15,
//                         color: Color(0xFF10151A),
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 15),
//                   buildInputField(text: '12/23'),
//                   SizedBox(height: 15),
//                   Text(
//                     "CVV",
//                     style: TextStyle(
//                         fontSize: 15,
//                         color: Color(0xFF10151A),
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 15),
//                   Padding(
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
//                         "Save",
//                         style: TextStyle(
//                           color: Color(0xFFFFFFFF), 
//                           fontSize: 16, 
//                           fontWeight: FontWeight.w700, 
//                           fontStyle: FontStyle.normal
//                         ),
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (BuildContext context) =>
//                           PaymentScreen(),
//                       ),
//                     );},
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],),
//       ),           
//     );
//   }
// }

// Widget buildInputField(
//     {String text,
//     TextEditingController controller,
//     Function(String) onChange,
//     Function(String) validate}) {
//   return TextFormField(
//     autofocus: false,
//     cursorColor: Color(0xFF10151A),
//     style: TextStyle(
//       fontSize: 15, 
//       color: Color(0xFF10151A), 
//       fontWeight: FontWeight.w700
//     ),
//     onChanged: onChange,
//     validator: validate,
//     controller: controller,
//     maxLines: null,
//     decoration: InputDecoration(
//       contentPadding: EdgeInsets.symmetric(horizontal: 13.5, vertical: 16),
//       hintText: text,
//       hintStyle: TextStyle(
//         color: Color(0xFFBABABA), 
//         fontWeight: FontWeight.w400, 
//         fontSize: 15
//       ),
//       filled: true,
//       fillColor: Color(0xFFF7F7F7),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(5),
//         borderSide: BorderSide(color: Color(0xFFF7F7F7)),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(5),
//         borderSide: BorderSide(color: Color(0xFFF7F7F7)),
//       ),
//     ),
//   );
// }
