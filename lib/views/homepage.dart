import 'dart:convert';
import 'package:aduaba_fresh/models/category.dart';
import 'package:aduaba_fresh/models/product.dart';
import 'package:aduaba_fresh/utils/user_preference.dart';
import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/views/categories.dart';
import 'package:aduaba_fresh/models/user.dart';
import 'package:aduaba_fresh/views/orders.dart';
import 'package:aduaba_fresh/views/selected_category.dart';
import 'package:aduaba_fresh/widgets/homepage_widgets/drawer.dart';
import 'package:aduaba_fresh/widgets/homepage_widgets/product_section_heading.dart';
import 'package:aduaba_fresh/widgets/homepage_widgets/product_stack.dart';

import 'package:aduaba_fresh/widgets/homepage_widgets/today_promo_stack.dart';
import 'package:aduaba_fresh/widgets/reusable_search_field.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String id = 'homepage';
  HomePage({ Key key, this.categoryId }) : super(key: key);
  final String categoryId; 

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> colors = [
    Color(0xFF3A953C),
    Color(0xFFBB2F48),
    Color(0xFF3C673D),
    Color(0xFFE75A21)
  ];
  


  int selectedIndex = 0;
  User user;

  @override
  void initState() {
    getUserFromSP();
    getCategoryName();
    getBestSelling();
    getFeaturedProduct();

    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  getUserFromSP() async {
    UserPreference up = new UserPreference();
    User usr = await up.getUser();
    // print(usr.toJson()['firstName']);
    setState(() {
      user = usr;
    });
  }

   List<Category> category = [];

  void getCategoryName() async {
    var response = await http.get(Uri.parse("https://teamaduaba.azurewebsites.net/categories"));
    if (response.statusCode == 200) {
      List<dynamic> decoded = json.decode(response.body);
      
      setState(() { 
      category = decoded.map((e) => Category.fromJson(e)).toList();
      });
    }
  }

  List<Product> product = [];

  void getBestSelling() async {
    var response = await http.get(Uri.parse("https://teamaduaba.azurewebsites.net/BestSellingProduct"));

    if (response.statusCode == 200) {
      // print(response.body);
      List<dynamic> decoded = json.decode(response.body);
      setState(() {
      product = decoded.map((e) => Product.fromJson(e)).toList();

      });
    }
  }


    List<Product> featuredProduct = [];

  void getFeaturedProduct() async {
    var response = await http.get(Uri.parse("https://teamaduaba.azurewebsites.net/BestSellingProduct"));

    if (response.statusCode == 200) {
      // print(response.body);
      List<dynamic> decoded = json.decode(response.body);
      setState(() {
      featuredProduct = decoded.map((e) => Product.fromJson(e)).toList();

      });
    }
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => DiscoverScreen()),
                  // );
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
              Text('Hi ${this.user?.firstName}',
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
              InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, Orders.id);
                },
                child: Container(
                  height: 47.0,
                  decoration: BoxDecoration(
                    color: Color(0XFFF7F7F7),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(children: [
                    SizedBox(width: 16.0,),
                    Icon(Icons.search,
                    color: Color(0xFFBABABA),
                    ),
                    SizedBox(width: 13.0,),
                    Text('Search',
                    style: TextStyle(
                      color: Color(0xFFBABABA),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400
                    ),
                    )
                  ],),
                )
                // ReusableSearchField(
                //   hintText: 'Search product',
                // ),
              ),
              SizedBox(height: 32.0,),

              ProductSectionHeadings(
                title: 'Categories',
                onTap: () {
                  Navigator.pushNamed(context, Categories.id);
                },
              ),
              
              SizedBox(height: 16.0,),
              SizedBox(
                height: 50.0,
                child: ListView.builder(
                  shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                       itemCount: category.length,
                       itemBuilder: (context, index) {
                         return  InkWell(
                           onTap: () {
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SelectedCategory(category: category[index]))
                            );
                           },
                           child: Container(
                             margin: EdgeInsets.only(right: 8.0),
                             width: 92,
                             height: 50,
                             decoration: BoxDecoration(
                               color: colors[index%colors.length].withOpacity(0.1),
                               borderRadius: BorderRadius.circular(8.0)
                             ),
                             child: Center(
                               child: Text(category[index].name,
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                 fontSize: 13.0,
                                 fontWeight: FontWeight.w700,
                                 color: colors[index%colors.length]
                               ),
                               ),
                             ),
                           ),
                         );
                       }
                       ),
              ),
                SizedBox(height: 32.0,),
                ProductSectionHeadings(
                  title: "Today's Promo"
                ),

                SizedBox(height: 16.0,),
                  SizedBox(
                    height: 181.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: product.length,
                      itemBuilder: (context, index) {
                        return TodayPromoStack(
                          productBrand: product[index].name,
                        );
                      }
                      ),
                  ),
                  SizedBox(height: 32,),
                  ProductSectionHeadings(
                    title: 'Best Selling',
                  ),

                  SizedBox(height: 16.0,),
                  SizedBox(
                    height: 280.0,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: featuredProduct.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: ProductStack(
                            image: featuredProduct[index].imageUrl,
                            manufacturer: featuredProduct[index].manufacturer,
                            description: featuredProduct[index].shortDescription,
                            amount: featuredProduct[index].amount.toString(),
                            productId: featuredProduct[index].id
                            
                            // available: featuredProduct[index].isAvailable,
                          ),
                        );
                      }
                      ),
                  ),
                SizedBox(height: 36,),

                ProductSectionHeadings(
                    title: 'Featured Products',
                  ),

                  SizedBox(height: 16.0,),

                  SizedBox(
                    height: 280.0,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      
                      itemCount: product.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: ProductStack(
                            image: product[index].imageUrl,
                            manufacturer: product[index].manufacturer,
                            description: product[index].shortDescription,
                            amount: product[index].amount.toString(),
                            productId: product[index].id
                          
                          ),
                        );
                      }
                      ),
                  ),
                
            ],),
          ),
        ),
        
         
      ),
    );
  }
}
