import 'package:flutter/material.dart';
import 'package:navigation_rail/data/data.dart';

class DetailScreen extends StatelessWidget {

  final Place place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
              Color(0xfffef5f6),
              Color(0xfffef5f6),
            ]
          )
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.6,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
                color: Color(0xfffef5f6),
              ),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        // Retrieve image from data.dart
                        image: AssetImage(place.image), fit: BoxFit.fill
                      ),
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(60),)
                    ),
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.arrow_back_rounded, color: Colors.white,),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white.withOpacity(0.5),
                                  child: const Icon(Icons.bookmark, color: Colors.black38,),
                                )
                              ],
                            ),
                            const Spacer(
                              flex: 7,
                            ),
                            /// Retrieve place name from data.dart
                            Text(place.name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined, color: Colors.white, size: 18,),
                                Text(place.location, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),

                  /// Icon + Text
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.star_border_rounded, color: Colors.black,),
                            SizedBox(width: 5),
                            Text("5.0", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.cloud_done_outlined, color: Colors.black,),
                            SizedBox(width: 5,),
                            Text("19*C", style: TextStyle(fontSize: 16, color: Colors.black,),)
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.schedule_rounded, color: Colors.black,),
                            SizedBox(width: 5,),
                            Text("60 days", style: TextStyle(fontSize: 16, color: Colors.black,),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /// End of upside Container design

            Container(
              height: MediaQuery.of(context).size.height*0.4,
              width: double.infinity,

              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(80)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Description", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),),
                    const SizedBox(height: 20,),
                    const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et "
                        "dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea "
                        "commodo consequat."),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: 'RM 35',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
                            children: <TextSpan>[
                              TextSpan(text: '/per one', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14)),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 25),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: const Text("Book Now", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10)
                  ],
                ),

              ),
            ),
          ],
        ),
      ),

    );
  }
}
