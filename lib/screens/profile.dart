import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:navigation_rail/constants/text_strings.dart';
import 'package:navigation_rail/widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(LineAwesomeIcons.bookmark),
              color: Colors.black,),
        title: const Text(tProfile, style: TextStyle(color: Colors.black, fontSize: 18),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [IconButton(onPressed: () {}, icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon),
              color: Colors.black,)],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120, height: 120,
                    // Make Image to Circular
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(image: AssetImage('assets/junet.png')),
                    ),
                  ),
                  /// Icon next to the profile image
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black.withOpacity(0.7),
                        ),
                        child: IconButton(
                          icon: const Icon(LineAwesomeIcons.alternate_pencil),
                          color: Colors.white,
                          onPressed: () {},
                        )
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              const Text(tProfileHeaing, style: TextStyle(fontWeight: FontWeight.bold),),
              const Text(tProfileSubHeading, style: TextStyle(fontSize: 14),),
              const SizedBox(height: 20,),
              SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, side: BorderSide.none, shape: const StadiumBorder()
                  ),
                  child: const Text(tEditProfile, style: TextStyle(color: Colors.white),),
                ),
              ),
              const SizedBox(height: 15),
              /// Divider: gonna cover the complete width
              Divider(color: Colors.grey[300]),
              const SizedBox(height: 10),

              /// Menu
              ProfileMenuWidget(title: "Settings", icon: LineAwesomeIcons.cog, onPress: () {}),
              ProfileMenuWidget(title: "Category", icon: LineAwesomeIcons.list, onPress: () {}),
              ProfileMenuWidget(title: "User Management", icon: LineAwesomeIcons.user_check, onPress: () {}),
              Divider(color: Colors.grey[300]),
              const SizedBox(height: 10),
              ProfileMenuWidget(title: "Information", icon: LineAwesomeIcons.info, onPress: () {}),
              ProfileMenuWidget(
                  title: "Logout",
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {}
              ),
            ],
          ),
        ),
      ),
    );
  }
}


