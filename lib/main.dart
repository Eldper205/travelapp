import 'package:flutter/material.dart';
import 'package:navigation_rail/screens/landing.dart';

void main() {
  runApp(const MyNavigator());
}

class MyNavigator extends StatelessWidget {
  const MyNavigator({Key? key}) : super(key: key);

  static const String appTitle = 'Navigation Rail';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // To turn off "DEBUG" banner in debug mode.
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: LandingScreen(),
    );
  }
}




