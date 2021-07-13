import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget { 
  ItemCard({this.image, this.name, this.description, this.amount, this.instock, this.longDescription, this.press});
  final String image;
  final String name;
  final String description;
  final String amount;
  final String instock;
  final String longDescription;
  final Function press;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(0),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),     
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: <Widget> [
                  Positioned(
                    right: 0.0,
                    top: 0.0,                   
                    child: IconButton(
                      icon: Icon(Icons.favorite),
                      color: Color(0xFFFFFFFF),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              // products is out demo list
              name,
              style: TextStyle(color: Color(0xFF819272), fontSize: 10, fontWeight: FontWeight.w300, fontStyle: FontStyle.normal),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              description,
              style: TextStyle(color: Color(0xFF000000), fontSize: 13, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, letterSpacing: 0.3),
            ),  
          ),
          SizedBox(height: 8),
          Row(
            children: [
            Text(
              "\₦${amount}",
              style: TextStyle(color: Color(0xFFF39E28), fontSize: 13, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
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
                instock,
                style: TextStyle(color: Color(0xFF3A953C), fontSize: 13, fontWeight: FontWeight.w400, fontStyle: FontStyle.normal),
              ),
            ),],
          ),
        ],
      ),
    );
  }
}