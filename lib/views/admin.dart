import 'package:aduaba_fresh/widgets/form_field_label.dart';
import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:aduaba_fresh/widgets/reusable_form_field.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({ Key key }) : super(key: key);
  static String id = 'admin';

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF3A953C).withOpacity(0.4),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.1),
              offset: Offset(0.0, 2.0), //(x,y)
              blurRadius: 20.0,
              spreadRadius: 0.0
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 45.0, 0, 17.0),
          child: Text('Admin',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),
          ),
        ),
      ),
       SizedBox(height: 40,),
      Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormFieldLabel(
              text: 'Manufacturer Name',
            ),
            SizedBox(height: 16.0,),
            ReusableTextFormField(
              hintText: 'Add Manufacturer',
            ),
            SizedBox(height: 24.0,),
            TextFormFieldLabel(
              text: 'Product Name',
            ),
            SizedBox(height: 16.0,),
            ReusableTextFormField(
              hintText: 'Product ',
            ),
            SizedBox(height: 24.0,),
            TextFormFieldLabel(
              text: 'Manufacturer Name',
            ),
            SizedBox(height: 16.0,),
            ReusableTextFormField(
              hintText: 'Add Manufacturer',
            ),
            SizedBox(height: 24.0,),
            TextFormFieldLabel(
              text: 'Manufacturer Name',
            ),
            SizedBox(height: 16.0,),
            ReusableTextFormField(
              hintText: 'Add Manufacturer',
            ),
            SizedBox(height: 24.0,),
            TextFormFieldLabel(
              text: 'Manufacturer Name',
            ),
            SizedBox(height: 16.0,),
            ReusableTextFormField(
              hintText: 'Add Manufacturer',
            ),
            SizedBox(height: 24.0,),

            TextFormFieldLabel(
              text: 'Manufacturer Name',
            ),
            SizedBox(height: 16.0,),
            ReusableTextFormField(
              hintText: 'Add Manufacturer',
            ),
            SizedBox(height: 24.0,),
          ],
        ),
      ),
      

      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ReusableButtonNoImg(
            text: 'Save',
            primary: Color(0xFF3A953C),
            onpressed: () {},
          ),
        ),
      )
          
       
        ],),
      ),
    );
  }
}