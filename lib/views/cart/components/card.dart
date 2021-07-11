// import 'package:flutter/material.dart';
// import 'package:aduaba_fresh/models/cart_model.dart';


// class CartCard extends StatefulWidget {
//   final CartModel cart;
//   const CartCard(
//       {Key key, this.cart}) 
//       : super(key: key); 
//   //super is used to call the constructor of the base class which is the StatefulWidget her
//   @override
//   _CartCardState createState() => _CartCardState();
// }
// class _CartCardState extends State<CartCard> {
//   int _n = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Checkbox(
//                 materialTapTargetSize:
//                 MaterialTapTargetSize.shrinkWrap,
//                 activeColor: Color(0xFFE75A21),
//                 checkColor: Color(0xFFFFFFFF),
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
//                               widget.cart.product.description,
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
//                             widget.cart.product.title,
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
//                               "\₦${widget.cart.product.price}",
//                               style: TextStyle(
//                                 color: Color(0xFFF39E28), 
//                                 fontSize: 13, 
//                                 fontWeight: FontWeight.w700, 
//                                 fontStyle: FontStyle.normal
//                               ),
//                             ),
//                             SizedBox(width: 5),
//                             Container(
//                               height: 3,
//                               width: 3,
//                               decoration:  BoxDecoration(
//                                 color: Color(0xFFD8D8D8),
//                                 shape: BoxShape.circle,
//                               ),
//                             ),
//                             Text(
//                               widget.cart.product.status,
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
//                               setState(() { _n--;
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
//                                     '$_n',
//                                     style: TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.grey)
//                                     ),
//                                   ),
//                                 ),
//                               InkWell(
//                                 onTap: () {
//                                   setState(() {
//                                     _n++;
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
//                 child: Image.asset(widget.cart.product.image),
//               ),                             
//             ],
//           ),
//           Divider(
//             color: Color(0xFFF5F5F5),
//             // color: Colors.grey,
//             thickness: 1,
//             height: 0,
//           ),
//           SizedBox(height: 24),
      
  
//         ],
//     );
       
//   }
// }

                


                      