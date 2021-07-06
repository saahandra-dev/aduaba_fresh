import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/views/categories.dart';
import 'package:aduaba_fresh/views/sign_in.dart';
import 'package:aduaba_fresh/widgets/homepage_widgets/categories.dart';
import 'package:aduaba_fresh/widgets/homepage_widgets/drawer.dart';
import 'package:aduaba_fresh/widgets/homepage_widgets/product_section_heading.dart';
import 'package:aduaba_fresh/widgets/homepage_widgets/best_selling_widget.dart';
import 'package:aduaba_fresh/widgets/homepage_widgets/today_promo_stack.dart';
import 'package:aduaba_fresh/widgets/reusable_search_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String id = 'homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
  setState(() {
    selectedIndex = index;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.black,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        centerTitle: true,
        title: Text('Aduaba Fresh',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
          color: Colors.black
        )
        ),
        actions: [
          Container(
            width: 35.0,
            height: 35.0,
            child: CircleAvatar(
              // radius: 18.0,
              backgroundColor: Color(0XFF3A953C),
              child: Image.asset('assets/images/cart.png')
            ),
          ),
          SizedBox(width: 24.0,)
        ],
      ),
        drawer: Drawer(
          child: DrawerBody()
          ),


        
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
          currentIndex: selectedIndex,
          onTap: _onItemTapped,
        ),



      body: SingleChildScrollView(
        child: Container(
          
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Hi, Andrea',
              style: TextStyle(
                color: Color(0XFF3A683B),
                fontSize: 17.0,
                fontWeight: FontWeight.w400
              )
              ),
              SizedBox(height: 9.0,),
              Text('What are you looking for \ntoday?',
              style: TextStyle(
                color: Color(0XFF819272),
                fontWeight: FontWeight.w700,
                fontSize: 24.0
              ),
              ),
              SizedBox(height: 24.0,),
              ReusableSearchField(
                hintText: 'Search product',
              ),
              SizedBox(height: 32.0,),

              ProductSectionHeadings(
                title: 'Categories',
                onTap: () {
                  Navigator.pushNamed(context, Categories.id);
                },
              ),

              SizedBox(height: 16.0,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(children: [
                    CategoriesCard(
                      title: 'Raw Food',
                      boxColor: Color(0xFF3A953C).withOpacity(0.1),
                      textColor: Color(0xFF3A953C),
                      
                    ),
                    CategoriesCard(
                      title: 'Spices',
                      boxColor: Color(0xFFBB2F48).withOpacity(0.1),
                      textColor: Color(0xFFBB2F48),
                    ),
                    CategoriesCard(
                      title: 'Bakery',
                      boxColor: Color(0xFF3C673D).withOpacity(0.1),
                      textColor: Color(0xFF3C673D),
                    ),
                    CategoriesCard(
                      title: 'Cosm',
                      boxColor: Color(0xFFE75A21).withOpacity(0.1),
                      textColor: Color(0xFFE75A21),
                    ),
                  ])
                )),
                SizedBox(height: 32.0,),
                ProductSectionHeadings(
                  title: "Today's Promo"
                ),

                SizedBox(height: 16.0,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TodayPromoStack(),
                      TodayPromoStack()
                    ],
                  )
                  ),

                  SizedBox(height: 32,),

                  ProductSectionHeadings(
                    title: 'Best Selling',
                  ),

                  SizedBox(height: 16.0,),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.only(right: 16.0),
                      child: Row(
                        children: [
                          BestSellingStack(
                            image: 'assets/images/best_selling01.png',
                          ),
                          BestSellingStack(
                            image: 'assets/images/best_selling02.png',
                          ),
                          BestSellingStack(
                            image: 'assets/images/best_selling02.png'
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  

            ],),
          ),
        ),
        
         
      ),
    );
  }
}












