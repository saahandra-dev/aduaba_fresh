import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/views/homepage.dart';
import 'package:aduaba_fresh/views/selected_category.dart';
import 'package:aduaba_fresh/widgets/reusable_page_title.dart';
import 'package:flutter/material.dart';



class Categories extends StatelessWidget {
  const Categories({ Key key}) : super(key: key);
  static String id = 'categories';

  

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
                Text('23 Categories',
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
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0,),
                  child: InkWell(
                    // splashColor: Colors.red,
                    // radius: 5,
                    onTap: () {
                      Navigator.pushNamed(context, SelectedCategory.id);
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
                              Text('Raw Fruits',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700
                              ),
                              ),
                              Text('234 items',
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
