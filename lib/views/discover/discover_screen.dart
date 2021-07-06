import 'package:aduaba_fresh/models/products_marks.dart';
import 'package:aduaba_fresh/models/product.dart';
import 'package:aduaba_fresh/views/cart/cart_screen.dart';
import 'package:flutter/material.dart';


import '../details_screen.dart';
import 'components/item_card.dart';
import 'components/search_screen.dart';


class DiscoverScreen extends StatefulWidget {
   final Product product;

   DiscoverScreen({this.product});
   @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen>
    with SingleTickerProviderStateMixin {
      TabController _tabController;

    

      //int _currentIndex;

    @override
    void initState() {
      super.initState();
      _tabController = TabController(
        length: ProductsMock.productsMarks.length,
        vsync: this,
      );
    }

    int _currentIndex = 1;
    final List<Widget> _children = [
    //HomeScreen(),
    DiscoverScreen(),
    CartScreen()
    ];

    void onTabTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }
    
    
    
  
      //_currentIndex = 0;
  

  //static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 35, right: 35),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),      
        child: BottomNavigationBar(
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
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search'
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
              ),
              label: 'More'
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 124,
        leadingWidth: 60,
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
          icon: Icon(Icons.table_rows),
          color: Color(0xFF000000),
          onPressed: () {}
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
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchScreen(ProductsMock.productsList)),           
              );},
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
            onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),           
              );},
          ),
        ],
        bottom: TabBar(
          labelPadding: EdgeInsets.fromLTRB(20, 0, 0, 17),
          isScrollable: true,
          labelColor: Color(0xFF151522),
          unselectedLabelColor: Color(0xFF999999),
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal),
          controller: _tabController,
          tabs: buildTabBarView(),
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 30.0, 25.0, 0),
                child: GridView.builder(
                  itemCount: ProductsMock.productsList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.65,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                    product: ProductsMock.productsList[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: ProductsMock.productsList[index],
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

  List<Widget> buildTabBarView() {
    List<Widget> list = [];
    ProductsMock.productsMarks.forEach(
      (f) => list.add(
        Text(
          f,
        ),
      ),
    );
    return list;
  }
}
       