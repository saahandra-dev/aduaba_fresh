import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/views/homepage.dart';
import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:aduaba_fresh/widgets/reusable_form_field.dart';
import 'package:aduaba_fresh/widgets/reusable_box_header.dart';
import 'package:aduaba_fresh/widgets/form_field_label.dart';
import 'package:flutter/material.dart';

class ShippingDetails extends StatefulWidget {
  const ShippingDetails({ Key key }) : super(key: key);
  static String id = 'shipping_details';

  @override
  _ShippingDetailsState createState() => _ShippingDetailsState();
}

class _ShippingDetailsState extends State<ShippingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 35,
          selectedItemColor: Colors.green,
          unselectedItemColor: Color(0xFFDEDEDE),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              label: 'home',
              icon: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
                child: Icon(Icons.home))
              ),
              BottomNavigationBarItem(
              label: 'search',
              icon: InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, AccountDetails.id);
                },
                child: Icon(Icons.search))
              ),
              BottomNavigationBarItem(
              label: 'option',
              icon: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AccountDetails.id);
                },
                child: Icon(Icons.more_horiz))
              ),
          ],
          // currentIndex: selectedIndex,
          // onTap: _onItemTapped,

          
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            ReusableBoxHeader(
              text: 'Shipping Details',
              onTap: () {
              Navigator.pushNamed(context, AccountDetails.id);
            },
            ),
            SizedBox(height: 48.0),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Shipping address',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF10151A)
                  ),
                  ),
                  GestureDetector(
                    onTap: () => showModalBottomSheet(
                      context: context, 
                      builder: (context) =>  ShipAddressBottomSheet()
                    ),
                    child: Row(children: [
                      Icon(Icons.add),
                      SizedBox(width: 8.0,),
                      Text('Add Address',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF3E3E3E)
                      ),
                      )
                    ],),
                  )
                ],),
              ],
            ),
            SizedBox(height: 8.0,),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          style: BorderStyle.solid,
                          color: Color(0xFFF5F5F5)
                        )
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        RichText(
                        overflow: TextOverflow.visible,
                        maxLines: 4,
                        text: TextSpan(
                          text: 'David Fayemi', 
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                            ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '\nRailway Quarters , tejuosho, Surulere ,Lagos, \nSurulere (Ojuelegba),Lagos', 
                              style: TextStyle( 
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                              )
                            ),
                            TextSpan(text: '\n+2348074057767', 
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                              )
                            ),
                          ] )
                      ),
                      SizedBox(height: 16.0,),
                      Text('Change',
                      
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000)
                      ),
                      )
                      ],),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {},
                      )
                    ],)
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ShipAddressBottomSheet extends StatelessWidget {
  const ShipAddressBottomSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0),
      child: Stack(children: [
        ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('New Card',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                color: Color(0xFF3C673D)
              ),
              ),
              IconButton(icon: Icon(Icons.clear), 
              onPressed: () {}
              )
            ],
          ),
          SizedBox(height: 32.0,),
          TextFormFieldLabel(
            text: 'Full Name',
          ),
          SizedBox(height: 16.0),
          ReusableTextFormField(
            hintText: 'Search product',
          ),
          SizedBox(height: 16.0),
          TextFormFieldLabel(
            text: 'Phone Number',
          ),
          SizedBox(height: 16.0),
          ReusableTextFormField(
            hintText: 'Search product',
          ),
          SizedBox(height: 16.0,),
          TextFormFieldLabel(
            text: 'Additional Phone Number',
          ),
          SizedBox(height: 16.0),
          ReusableTextFormField(
            hintText: 'Search product',
          ),
          SizedBox(height: 16.0),
          TextFormFieldLabel(
            text: 'Additional info',
          ),
          SizedBox(height: 16.0),
          ReusableTextFormField(
            hintText: 'Search product',
          ),
          
        ],),
        Positioned(
          top: 371.0,
          left: 0,
          right: 0,
          child: ReusableButtonNoImg(
            onpressed: () {},
            primary: Color(0xFF3A953C),
            text: 'Add Address',
          ),
        )
      ],),
    );
  }
}