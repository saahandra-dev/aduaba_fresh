import 'dart:io';

import 'package:aduaba_fresh/models/user.dart';
import 'package:aduaba_fresh/utils/user_preference.dart';
import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:aduaba_fresh/widgets/reusable_form_field.dart';
import 'package:aduaba_fresh/widgets/reusable_box_header.dart';
import 'package:aduaba_fresh/widgets/form_field_label.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class EditUserProfile extends StatefulWidget {
  const EditUserProfile({ Key key }) : super(key: key);
  static String id = 'edit_user_profile';

  @override
  _EditUserProfileState createState() => _EditUserProfileState();
}

class _EditUserProfileState extends State<EditUserProfile> {
  File _image;

 _imgFromCamera() async {
  File image = await ImagePicker.pickImage(
    source: ImageSource.camera, imageQuality: 50
  );

  setState(() {
    _image = image;
  });
}

_imgFromGallery() async {
  File image = await  ImagePicker.pickImage(
      source: ImageSource.gallery, imageQuality: 50
  );

  setState(() {
    _image = image;
  });
}

   User user;

  @override
  void initState() {
    getUserFromSP();
    super.initState();
  }

  getUserFromSP() async {
    UserPreference up = new UserPreference();
    User usr = await up.getUser();
    print(usr.toJson()['firstName']);
    setState(() {
      user = usr;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 45.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
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
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white,
                      child: _image != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.file(
                                _image,
                                width: 100,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(50)),
                              width: 100,
                              height: 100,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                    Positioned(
                      top:0,
                      right: 0,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                        context: context, 
                        builder: (context) => Container(
                            height: 100.0,
                            width: double.infinity,
                            margin: EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text('Choose a profile photo',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    )),
                                SizedBox(height: 10.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton.icon(
                                        onPressed: () {
                                          _imgFromCamera();
                                          Navigator.of(context).pop();
                                        },
                                        icon: Icon(Icons.camera),
                                        label: Text('Camera')
                                      ),
                                    SizedBox(width: 10.0,),
                                    ElevatedButton.icon(
                                        onPressed: () {
                                          _imgFromGallery();
                                          Navigator.of(context).pop();
                                        },
                                        icon: Icon(Icons.image),
                                        label: Text('Gallery'))
                                  ],
                                )
                              ],
                            ),
                          ));
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF979797),
                            child: Image.asset('assets/images/add_image_icon.png'),
                          ),
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
                  hintText: '${this.user?.firstName}',
                ),
                SizedBox(height: 16.0,),
                TextFormFieldLabel(
                  text: 'Last Name',
                ),
                SizedBox(height: 16.0,),
                ReusableTextFormField(
                  hintText: '${this.user?.lastName}',
                ),
                SizedBox(height: 16.0,),
                TextFormFieldLabel(
                  text: 'Phone Number',
                ),
                SizedBox(height: 16.0,),
                ReusableTextFormField(
                  hintText: '${this.user?.phoneNumber}',
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