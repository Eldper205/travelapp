import 'package:flutter/material.dart';
import 'package:navigation_rail/constants/text_strings.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(tProfileHeaing),
            ],
          ),

        ),
      ),
    );
  }
}
