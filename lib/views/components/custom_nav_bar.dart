import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: const Color(0xff53B175),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontFamily: 'Gilroy'),
        unselectedLabelStyle: const TextStyle(
          color: Colors.black,
        ),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.shop,
                color: Colors.black87,
                size: 17,
              ),
              label: 'Shope'),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_search, color: Colors.black, size: 29),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
                size: 28,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.heart,
                color: Colors.black,
                size: 28,
              ),
              label: 'sas'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
                size: 28,
              ),
              label: 'sas'),
        ]);
  }
}
