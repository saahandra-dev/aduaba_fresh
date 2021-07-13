import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/views/homepage.dart';
import 'package:flutter/material.dart';

class ReusableBottomNav extends StatelessWidget {
  const ReusableBottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      );
  }
}