import 'dart:convert';

import 'package:aduaba_fresh/models/product.dart';

import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/views/cart/cart_screen.dart';
import 'package:aduaba_fresh/views/homepage.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;


import '../details_screen.dart';
import '../homepage.dart';
import 'components/item_card.dart';
import 'components/search_screen.dart';



class DiscoverScreen extends StatefulWidget {
  final Product product;

   DiscoverScreen({this.product});
  
  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  

  List<Product> product = [];

  void getProduct() async {
    var response = await http.get(Uri.parse("https://teamaduaba.azurewebsites.net/getProducts"));

    if (response.statusCode == 200) {
      List<dynamic> decoded = json.decode(response.body);
      List<Product> allproduct = decoded.map((e) => Product.fromJson(e)).toList();
      
      setState(() { 
      product = allproduct;
      });
     
    // print(response.body);
    }
  }

  int _currentIndex = 1;
    final List<Widget> _children = [
    HomePage(),
    DiscoverScreen(),
    // CartScreen()
    ];

    void onTabTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }
  
  @override
  Widget build(BuildContext context) {
    getProduct();
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 35, right: 35),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),      
        child: BottomNavigationBar(
          iconSize: 35,
          onTap: onTabTapped, // new
          currentIndex: _currentIndex,       
          backgroundColor: Color(0xFFFFFFFF),
          elevation: 0,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: Color(0xFF3A953C),
          unselectedItemColor: Color(0xFF999999),
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
              child: Icon(
                Icons.home,
              ),),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DiscoverScreen()),
                  );
                },
              child: Icon(
                Icons.search,
              ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'More',
              icon: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AccountDetails.id);
                },
              child: Icon(
                Icons.more_horiz,
              ),
              ),
            ),
            // label: 'More',
          ]),
        
      ),
      appBar: AppBar(
        toolbarHeight: 124,
        leadingWidth: 60,
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.black,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Container(
          //padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.5),
          child: Text(
            'Discover',
            style: TextStyle(
              fontStyle: FontStyle.normal, fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xFF819272)),
          ),
        ),
        actions: <Widget>[
          Container(
            child: IconButton(
              icon: Icon(Icons.search),
              color: Color(0xFFBABABA),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchScreen(product)),           
              ),
            ),
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(              
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Color(0xFF3A953C),
                shape: BoxShape.circle,
              ),
              child: ImageIcon(
                AssetImage("assets/icons/Vector.png"),
                color: Color(0xFFFFFFFF),
              ),                   
            ),),
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => CartScreen()),           
            //   );}
              
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size(0, 60),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 17),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text('All',
                        style: TextStyle(
                          fontSize: 15, 
                          fontWeight: FontWeight.w700, 
                          fontStyle: FontStyle.normal
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        child: Text(
                          'Mobile Phones',
                          style: TextStyle(
                            fontSize: 15, 
                            fontWeight: FontWeight.w700, 
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF999999)
                          ),  
                        ),                      
                        onTap: () {
                          
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        child: Text(
                          'Salads',
                          style: TextStyle(
                            fontSize: 15, 
                            fontWeight: FontWeight.w700, 
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF999999)
                          ),  
                        ),                      
                        onTap: () {
                          
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        child: Text(
                          'Vegetables',
                          style: TextStyle(
                            fontSize: 15, 
                            fontWeight: FontWeight.w700, 
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF999999)
                          ),  
                        ),                      
                        onTap: () {
                          
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        child: Text(
                          'Nuts and Seeds',
                          style: TextStyle(
                            fontSize: 15, 
                            fontWeight: FontWeight.w700, 
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF999999)
                          ),  
                        ),                      
                        onTap: () {
                          
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        child: Text(
                          'Juices',
                          style: TextStyle(
                            fontSize: 15, 
                            fontWeight: FontWeight.w700, 
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF999999)
                          ),  
                        ),                      
                        onTap: () {
                          
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        child: Text(
                          'Garbage',
                          style: TextStyle(
                            fontSize: 15, 
                            fontWeight: FontWeight.w700, 
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF999999)
                          ),  
                        ),                      
                        onTap: () {
                          
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        child: Text(
                          'Raw Food',
                          style: TextStyle(
                            fontSize: 15, 
                            fontWeight: FontWeight.w700, 
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF999999)
                          ),  
                        ),                      
                        onTap: () {
                          
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        child: Text(
                          'Honey',
                          style: TextStyle(
                            fontSize: 15, 
                            fontWeight: FontWeight.w700, 
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF999999)
                          ),  
                        ),                      
                        onTap: () {
                          
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        child: Text(
                          'Smoothies',
                          style: TextStyle(
                            fontSize: 15, 
                            fontWeight: FontWeight.w700, 
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF999999)
                          ),  
                        ),                      
                        onTap: () {
                          
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 30.0, 25.0, 0),
                child: GridView.builder(
                  itemCount: product.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.65,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                    image: product[index].imageUrl,
                    name: product[index].name,
                    description: product[index].shortDescription,
                    amount: product[index].amount.toString(),
                    instock: product[index].inStock.toString(),
                    longDescription: product[index].longDescription,
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                        image: product[index].imageUrl,
                        name: product[index].name,
                        description: product[index].shortDescription,
                        amount: product[index].amount.toString(),
                        instock: product[index].inStock.toString(),
                        longDescription: product[index].longDescription,                         
                        ),
                      ),
                    ),
                  ),                            
                ),
              ),
            ),
          ]
        ),
      
    );
  }
}
        

       