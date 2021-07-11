// import 'package:aduaba_fresh/models/product.dart';
// import 'package:flutter/material.dart';


// class DetailsScreen extends StatelessWidget {

//   final Product product;


//   DetailsScreen({ this.product });

  


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           color: Colors.white,
//           onPressed: () => Navigator.pop(context),
//       ),
//       ),
//       extendBodyBehindAppBar: true,
//       body: Container(
//         color: Color(0xFFE5E5E5),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             ClipRRect(
//               child: Image.asset((product.image),
//                 height: 340,
//                 fit: BoxFit.cover,
//                 alignment: Alignment.topCenter,
//               ),
//             ),
//             SizedBox(height: 10),           
//             Padding(
//               padding: EdgeInsets.only(left: 10, right: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   ListTile(
//                     title: Padding(
//                       padding: EdgeInsets.fromLTRB(0, 20, 50, 0),
//                       child: Text(
//                         product.description,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w700,
//                           fontStyle: FontStyle.normal,
//                           fontSize: 24,
//                           color: Color(0xFF000000)
//                         ),
//                       ),    
//                     ),
//                     subtitle: Padding(
//                       padding: EdgeInsets.only(top: 10.0),
//                       child: Text(
//                         product.title,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           fontStyle: FontStyle.normal,
//                           fontSize: 17,
//                           color: Color(0xFF819272),
//                         ),
//                       )
//                     ),
//                     trailing: IconButton(
//                       alignment: Alignment.topRight,
//                       icon: Icon(Icons.favorite),
//                       color: Color(0xFFBB2F48),
//                       onPressed: () {},
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.fromLTRB(15, 18, 15, 0),
//                     child: Text(
//                       product.details,
//                       style: TextStyle(
//                         fontWeight: FontWeight.w300,
//                         fontStyle: FontStyle.normal,
//                         fontSize: 15,
//                         color: Color(0xFF10151A),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.fromLTRB(15, 18, 15, 0),
//                     child: Text(
//                       'MORE DETAILS +',
//                       style: TextStyle(
//                         color: Color(0xFF494846),
//                         fontSize: 13,
//                         fontWeight: FontWeight.w400,
//                         fontStyle: FontStyle.normal,
//                         decoration: TextDecoration.underline,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
//               child: Row(
//                 children: <Widget>[
//                   Text(
//                     "\₦${product.price}",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontStyle: FontStyle.normal,
//                       fontSize: 17,
//                       color: Color(0xFF000000),
//                     ),
//                   ),
//                   Spacer(),
//                   Container(
//                     child: RawMaterialButton(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       constraints: BoxConstraints(minWidth: 170, minHeight: 50),
//                       fillColor: Color(0xFF3A953C),               
//                       elevation: 0.0,
//                       child: Text(
//                         'Add to Cart',
//                         style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal),
//                       ),                        
//                       onPressed: () {}
                       
//                       ),
                        
                      
                       

//                     ),],),
//                   ),
//                 ],
//               ),
//             ),    
          
//         );
      
    
//   }
// }
