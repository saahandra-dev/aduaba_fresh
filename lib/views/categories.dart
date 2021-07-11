import 'dart:convert';
import 'package:aduaba_fresh/models/category.dart';
import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/views/discover/discover_screen.dart';
import 'package:aduaba_fresh/views/homepage.dart';
import 'package:aduaba_fresh/views/selected_category.dart';
import 'package:aduaba_fresh/widgets/reusable_page_title.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Categories extends StatefulWidget {
  const Categories({ Key key }) : super(key: key);
  static String id = 'categories';

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  

  List<Category> category = [];

  void getCategory() async {
    var response = await http.get(Uri.parse("https://teamaduaba.azurewebsites.net/categories"));

    if (response.statusCode == 200) {
      List<dynamic> decoded = json.decode(response.body);
      
      setState(() { 
      category = decoded.map((e) => Category.fromJson(e)).toList();
      });
     
    // print(response.body);
    }
  }

  // @override
  // void initState() {
  //   getCategory();
  //   super.initState();
  // }

  

  @override
  Widget build(BuildContext context) {
    getCategory();
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Icon(Icons.home_outlined),
                ))
              ),
              BottomNavigationBarItem(
              label: 'search',
              icon: InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => DiscoverScreen()),
                  // );
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
                child: Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: Icon(Icons.more_horiz),
                ))
              ),
          ],
          // currentIndex: selectedIndex,
          // onTap: _onItemTapped,

          
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24.0, 46.0, 24.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                    child: Icon(Icons.west_sharp)
                    )
                  ),
                  SizedBox(height: 25.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusablePageTitle(
                      text: 'Categories',
                    ),
                    CircleAvatar(
                      radius: 18.0,
                      backgroundColor: Color(0XFF3A953C),
                      child: Image.asset('assets/images/cart.png')
                    ),
                ],),
                SizedBox(height: 19.0,),
                Text('${category.length} Categories',
                style: TextStyle(
                  color: Color(0xFFBBBBBB),
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0
                )
                ),
                SizedBox(height: 17.0,)
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            // elevation: 1,
            color: Color(0xFFF5F5F5).withOpacity(1),
            child: ListView.builder(
              itemCount: category.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0,),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SelectedCategory(category: category[index]))
                      );
                      // Navigator.pushNamed(context, SelectedCategory.id);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFFE5E5E5),
                            width: 1,
                            style: BorderStyle.solid
                          ))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric( vertical: 16),
                        child: Row(children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            child: Image.asset('assets/images/raw_fruits01.png'),
                          ),
                          SizedBox(width: 16.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(category[index]?.name,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700
                              ),
                              ),
                              Text('234',
                              style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFBBBBBB)
                              ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Image.asset('assets/images/categories_arrow.png')
                        ],),
                      ),
                    ),
                  ),
                );
              }
            )
          ),
        )
      ],),
      
    );
  }
}

