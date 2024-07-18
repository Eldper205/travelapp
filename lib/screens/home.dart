import 'package:flutter/material.dart';
import 'package:navigation_rail/data/data.dart';
import 'package:navigation_rail/screens/detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const  BoxDecoration(
          gradient: LinearGradient(
              colors:[
                Colors.white,
                Colors.white,
                Color(0xfff9e5e6),
                Color(0xfff9e5e6),
              ] )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          foregroundColor: Colors.grey,
          backgroundColor: Colors.white,
          elevation: 0,
          leading:const Padding(
            padding: EdgeInsets.only(left: 20),
            child:  CircleAvatar(
              backgroundImage: AssetImage("assets/junet2.png"),
              backgroundColor: Colors.white,
            ),
          ),
          actions: [
            IconButton(onPressed: (){},
                icon: const Icon(Icons.search, color: Colors.grey,))
          ],

        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.6,
              width: double.infinity,
              decoration:const  BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors:[
                        Colors.white,

                        Color(0xfff9e5e6),
                      ] ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 1),
                    child: Text('Discover', style: TextStyle(fontSize: 23.0, color: Colors.black, fontWeight: FontWeight.w700),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for(int i=0;i<categorylist.length;i++)...[Column(
                          children: [
                            Text(categorylist[i], style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: i==0? Colors.black : Colors.black.withOpacity(0.4)),),
                            const SizedBox(height: 5,),
                          ],
                        )]

                      ],
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 40,top: 20),
                      padding: const EdgeInsets.only(left: 7),


                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,

                          itemCount: placelist.length,
                          itemBuilder: (context,index){
                            return GestureDetector(
                              onTap: () {
                                // Navigate to "DetailScreen" while clicking the place
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context)=> DetailScreen(place: placelist[index])
                                    )
                                );
                              },
                              child: Container(
                                padding:const  EdgeInsets.all(15),
                                margin:const  EdgeInsets.only(right: 20,left: 10),

                                width: 220,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image: AssetImage(placelist[index].image),fit: BoxFit.fill
                                    )
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.white.withOpacity(0.5),
                                          child:const  Icon(Icons.bookmark,color: Colors.black38,),

                                        ),

                                      ],
                                    ),
                                    const   Spacer(),
                                    Text(placelist[index].name,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    Row(

                                      children: [
                                        const  Icon(Icons.location_on_rounded,color: Colors.white,size: 18,),
                                        Text(placelist[index].location,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            );
                          }),

                    ),
                  )
                ],
              ),

            ),

            /// Popular Categories
            Expanded(
              child: Container(
                padding:const  EdgeInsets.all(15),
                width: double.infinity,
                decoration:const  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(80))

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    /// Text: Popular Categories & See All
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Popular Categories", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400),),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('See All', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400),),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    /// Icon + Text (List of Category)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for(int i = 0; i <popularcategory.length; i++)...[
                          Column(
                            children: [
                              Container(
                                width: 70,
                                height: 62,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    shape: BoxShape.rectangle,
                                    color: popularcategory[i].color,
                                    boxShadow: [
                                      BoxShadow(
                                          color: popularcategory[i].color.withOpacity(0.6),
                                          offset: const Offset(5,5),
                                          blurRadius: 20
                                      )
                                    ]
                                ),
                                child: Icon(popularcategory[i].icon,color: Colors.white,size: 30,),
                              ),
                              const SizedBox(height: 5,),
                              Text(popularcategory[i].name, style: const TextStyle(fontWeight: FontWeight.w400),)
                            ],
                          ),

                        ]
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

