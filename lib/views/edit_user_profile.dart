import 'dart:convert';
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
import 'package:http/http.dart' as http;

class EditUserProfile extends StatefulWidget {
  const EditUserProfile({ Key key }) : super(key: key);
  static String id = 'edit_user_profile';

  @override
  _EditUserProfileState createState() => _EditUserProfileState();
}

class _EditUserProfileState extends State<EditUserProfile> {
  final _formKey = GlobalKey<FormState>();
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
    // print(usr.toJson()['firstName']);
    setState(() {
      user = usr;
    });
  }

  

    Future<void> updateUserDetails() async {
      print('work IJN');
      print(_image);
    var response = await http.post(Uri.parse("https://teamaduaba.azurewebsites.net/update"), 
    body: jsonEncode({
      // 'productId': productId, 
        "firstName": _firstNameController.text,
        "lastName": _lastNameController.text,
        "phoneNumber": _phoneController.text
      }),
      headers: {
      "Content-Type":"application/json"
    }

      );

      if(response.statusCode == 201) {
        User user = User.fromJson(json.decode(response.body));
        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Added to Wishlist")));
        print(response.body);

      }print('work IJN');
    }


      TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();


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

                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormFieldLabel(
                        text: 'First Name',
                      ),
                      SizedBox(height: 16.0,),
                      ReusableTextFormField(
                        controller: _firstNameController,
                        hintText: '${this.user?.firstName}',
                        validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your first name';
                            }
                            return null;
                          },
                      ),
                      SizedBox(height: 16.0,),
                      TextFormFieldLabel(
                        text: 'Last Name',
                      ),
                      SizedBox(height: 16.0,),
                      ReusableTextFormField(
                        controller: _lastNameController,
                        hintText: '${this.user?.lastName}',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your first name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 16.0,),
                      TextFormFieldLabel(
                        text: 'Phone Number',
                      ),
                      SizedBox(height: 16.0,),
                      ReusableTextFormField(
                        controller: _phoneController,
                        hintText: '+234 ${this.user?.phoneNumber}',
                        validator: (value) {
                          if (value.length != 10)
                              return 'Mobile Number must be of 10 digit';
                            else
                              return null;
                          }
                      ),
                    ],)
                    )
              ],),
            ),
            ReusableButtonNoImg(
              text: 'Save Changes',
              primary: Color(0xFF3A953C),
              onpressed: () {
                print(_formKey.currentState.validate());
                if(_formKey.currentState.validate()) {
                  
                  updateUserDetails();
                }
              },
            )
          ],
        ),
      ),
      
    );
  }
}