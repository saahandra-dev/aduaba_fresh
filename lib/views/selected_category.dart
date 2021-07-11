import 'dart:convert';

import 'package:aduaba_fresh/models/product.dart';
import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/views/categories.dart';
import 'package:aduaba_fresh/views/discover/discover_screen.dart';
import 'package:aduaba_fresh/views/homepage.dart';
import 'package:aduaba_fresh/widgets/homepage_widgets/product_stack.dart';
import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:aduaba_fresh/widgets/reusable_search_field.dart';
import 'package:aduaba_fresh/widgets/form_field_label.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SelectedCategory extends StatefulWidget {
  SelectedCategory({ Key key, this.categoryId }) : super(key: key);
  static String id = 'selected_category';

  final String categoryId; 

  @override
  _SelectedCategoryState createState() => _SelectedCategoryState();
}

class _SelectedCategoryState extends State<SelectedCategory> {


  List<Product> product = [];

  void getProduct() async {
    var response = await http.get(Uri.parse("https://teamaduaba.azurewebsites.net/getProducts"));

    if (response.statusCode == 200) {
      // print(response.body);
      List<dynamic> decoded = json.decode(response.body);
      List<Product> allproduct = decoded.map((e) => Product.fromJson(e)).toList();
      // print(widget.categoryId);
      setState(() {
        
      product = allproduct.where((e) => e.categoryId == widget.categoryId ).toList();

      });
    //  print(product);
    // print(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    getProduct();
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


      body: Column(children: [
        Padding(
            padding: EdgeInsets.fromLTRB(24.0, 46.0, 24.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Categories.id);
                    },
                    child: Icon(Icons.west_sharp)
                    )
                  ),
                  SizedBox(height: 25.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Raw Food',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF819272)
                    ),
                    ),
                    CircleAvatar(
                      radius: 18.0,
                      backgroundColor: Color(0XFF3A953C),
                      child: Image.asset('assets/images/cart.png')
                    ),
                ],),
                SizedBox(height: 19.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${product.length} items listed',
                    style: TextStyle(
                      color: Color(0xFFBBBBBB),
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0
                    )
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => showModalBottomSheet(
                            context: context, 
                            builder: (context) => Container(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
                                child: Column(children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Sort by',
                                      style: TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF3C673D)
                                      ),
                                      ),
                                      Icon(Icons.close)
                                    ],
                                  ),
                                  Spacer(),
                                  ReusableButtonNoImg(
                                    text: 'Apply',
                                    primary: Color(0xFF3A953C),
                                    onpressed: () {},
                                  )
                                ],),
                              ),
                            )
                          ),
                          child: Text('Sort',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF3E3E3E)
                          )
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        Image.asset('assets/images/divider.png'),
                        SizedBox(width: 20.0,),
                        GestureDetector(
                          onTap: () => showModalBottomSheet(
                          context: context, 
                          builder: (context) => FilterBottomSheet()
                        ),
                          child: Text('Filter',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF3E3E3E)
                          )
                          ),
                        ),
                      ],
                    ),
                    
                    
                  ],
                ),
                SizedBox(height: 21.0,),
              
              ],)
            ),
            Expanded(
                    child: Container(
                      color: Color(0xFFF5F5F5).withOpacity(1),
                      margin: EdgeInsets.zero,
                       child: 
                      StaggeredGridView.countBuilder(
                        staggeredTileBuilder: (index) {
                          return StaggeredTile.count(2, 3);
                        },
                        crossAxisCount: 4,
                        itemCount: product.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(24.0, 0.0, 8.0, 28.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              ProductStack(
                                image: product[index].imageUrl,
                                manufacturer: product[index].manufacturer,
                                description: product[index].shortDescription,
                                amount: product[index].amount.toString(),
                                instock: product[index].inStock.toString(),
                              ),
                              // SizedBox(width: 16.0,),
                              // BestSellingStack(
                              //   image: 'assets/images/selected_category02.png',                    
                              // )
                            ],),
                          );
                        }
                        ),
                    ),
                  )
      ],),
    );
  }
}

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 628.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Filter',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF3C673D)
                ),
                ),
                Icon(Icons.close)
              ],
            ),
            SizedBox(height: 32.0,),
            TextFormFieldLabel(
              color: Color(0xFF10151A),
              text: 'Vendor',
            ),
            SizedBox(height: 16.0,),
            ReusableSearchField(
              hintText: 'Search vendor'
            ),
            SizedBox(height: 32.0,),
            TextFormFieldLabel(
              color: Color(0xFF10151A),
              text: 'Sub category',
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.5,
              child: StaggeredGridView.countBuilder(
                itemCount: 8,
                crossAxisCount: 8,
                staggeredTileBuilder: (index) => StaggeredTile.count(4, 1),
                itemBuilder: (context, index) {
                  return ListTile(
                    horizontalTitleGap: 0,
                    leading: Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    title: Text('Granular Fruits'),
                    contentPadding: EdgeInsets.all(0)
                    );
                  }),
                ),
                TextFormFieldLabel(
                  color: Color(0xFF10151A),
                  text: 'Price Range',
                ),
                ReusableButtonNoImg(
                  text: 'Apply Filter',
                  primary: Color(0xFF3A953C),
                  onpressed: () {},
                )
          ],),
        )
      ),
    );
  }
}