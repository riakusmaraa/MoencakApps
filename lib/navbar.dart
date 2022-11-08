import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/pages/homepage.dart';
import 'package:moencak_apps/pages/orderPage.dart';
import 'package:moencak_apps/pages/favoritePage.dart';
import 'package:moencak_apps/pages/userPage.dart';

class NavBar extends StatefulWidget {
  // const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
int selectedIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    OrderPage(),
    FavoritePage(),
    UserPage(),
  ];

  void onTap(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xFFF5F2E8) ),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Color(0xFFF5F2E8) ),
            label: 'Order'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Color(0xFFF5F2E8) ),
            label: 'Favorite'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color(0xFFF5F2E8) ),
            label: 'Profile'
          ),
        ],
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xFFF5F2E8) ,
        unselectedItemColor:Color(0xFFF5F2E8)  ,
        backgroundColor: Color(0xFF968264),
        onTap: onTap,
      ),
      body: _children[selectedIndex] ,
    );
  }
}
