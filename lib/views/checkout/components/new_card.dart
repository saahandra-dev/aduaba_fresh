import 'package:aduaba_fresh/views/checkout/components/add_new_card.dart';
import 'package:aduaba_fresh/views/discover/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:aduaba_fresh/views/homepage.dart';


class NewCard extends StatefulWidget {
  const NewCard({Key key}) : super(key: key);

  @override
  _NewCardState createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {      

    int _currentIndex = 2;
    final List<Widget> _children = [
    HomePage(),
    DiscoverScreen(),
    NewCard()
    ];

    void onTabTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            Container(
              color: Color(0xFFFFFFFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, top: 20, bottom: 10),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Color(0xFF424347)),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 20),
                    child: Text(
                      'Payment',
                      style: TextStyle(
                        color: Color(0xFF819272), 
                        fontSize: 24.0, 
                        fontWeight: FontWeight.w700, 
                        fontStyle: FontStyle.normal
                      ),
                    ),
                  ),
                ],
              ),
            ),
                SizedBox(height: 20),
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 20, bottom:0),
                child: Text(
                  "My Cards",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF10151A),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                  ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.transparent,
                          child: Image(
                            image: AssetImage(
                              "assets/images/visa.png",
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 90),
                          child: Text(
                            "1009 •••• •••• 2017 ",
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xFF10151A),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal
                            ),
                          ),
                        ),
                        InkWell(
                          child: Padding(
                            padding: EdgeInsets.only(left: 14, right: 0),
                            child: Container(              
                              height: 20.0,
                              width: 20.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                              ),
                              child: ImageIcon(
                                AssetImage("assets/icons/trash.png"),
                              ),                   
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.transparent,
                          child: Image(
                            image: AssetImage(
                              "assets/images/mastercardlogo.jpeg"
                            ),                             
                            height: 35,
                            width: 35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 90),
                          child:  Text(
                            "1009 •••• •••• 2017 ",
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xFF10151A),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal
                            ),
                          ),
                        ),
                        InkWell(
                          child: Padding(
                            padding: EdgeInsets.only(right: 0),
                            child: Container(              
                              height: 20.0,
                              width: 20.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                              ),
                              child: ImageIcon(
                                AssetImage("assets/icons/trash.png"),
                              ),                   
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 40),              
                Padding(
                  padding: EdgeInsets.only(top: 250),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: RaisedButton(
                      color: Color(0xFF3A953C),
                      textColor: Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius. circular(10)
                      ),
                      elevation: 0,
                      child: Text(
                        "Add New Card",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF), 
                          fontSize: 16, 
                          fontWeight: FontWeight.w700, 
                          fontStyle: FontStyle.normal
                        ),
                      ),
                      onPressed: () {
                        Navigator.push( context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                              AddNewCard(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),],),
    );
  }
}