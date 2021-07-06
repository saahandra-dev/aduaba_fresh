import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:aduaba_fresh/widgets/reusable_form_field.dart';
import 'package:aduaba_fresh/widgets/reusable_box_header.dart';
import 'package:aduaba_fresh/widgets/form_field_label.dart';
import 'package:flutter/material.dart';

class EditUserProfile extends StatefulWidget {
  const EditUserProfile({ Key key }) : super(key: key);
  static String id = 'edit_user_profile';

  @override
  _EditUserProfileState createState() => _EditUserProfileState();
}

class _EditUserProfileState extends State<EditUserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 45.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                ReusableBoxHeader(
                  text: 'Edit Profile',
                  onTap: () {
                    Navigator.pushNamed(context, AccountDetails.id);
                  },
                ),
                SizedBox(height: 48.0,),
                Center(
                  child: Stack(children: [
                    Container(
                      width: 129,
                      height: 129,
                      child: CircleAvatar(
                        child: Image.asset('assets/images/edit_acc_profile.png'),
                      ),
                    ),
                    Positioned(
                      top:0,
                      right: 0,
                      child: Container(
                        width: 40,
                        height: 40,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF979797),
                          child: Image.asset('assets/images/add_image_icon.png'),
                        ),
                      ),
                    )
                  ],),
                ),
                SizedBox(height: 72.0,),
                TextFormFieldLabel(
                  text: 'First Name',
                ),
                SizedBox(height: 16.0,),
                ReusableTextFormField(
                  hintText: 'Andrea',
                ),
                SizedBox(height: 16.0,),
                TextFormFieldLabel(
                  text: 'Last Name',
                ),
                SizedBox(height: 16.0,),
                ReusableTextFormField(
                  hintText: 'Charles',
                ),
                SizedBox(height: 16.0,),
                TextFormFieldLabel(
                  text: 'Phone Number',
                ),
                SizedBox(height: 16.0,),
                ReusableTextFormField(
                  hintText: '+234 809 202 3024',
                ),
              ],),
            ),
            ReusableButtonNoImg(
              text: 'Save Changes',
              primary: Color(0xFF3A953C),
              onpressed: () {},
            )
          ],
        ),
      ),
      
    );
  }
}