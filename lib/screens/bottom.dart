import 'package:flutter/material.dart';
import 'package:navigation_rail/screens/home.dart';
import 'package:navigation_rail/screens/profile.dart';


class Botton extends StatefulWidget {
  const Botton({Key? key}) : super(key: key);

  @override
  State<Botton> createState() => _BottonState();
}

class _BottonState extends State<Botton> {

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),  // 1st index [0]
    ProfileScreen(),  // 2nd index [1]
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            )
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: const Color(0xffd0cedb),
          selectedItemColor: Colors.black54,
          onTap: _onItemTapped,
      ),
    );
  }
}
