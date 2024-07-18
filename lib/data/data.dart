import 'package:flutter/material.dart';

List<String>categorylist = ["Best nature", "Most viewed", "Recommended"];

class Place{
  final String name;
  final String image;
  final String location;

  // Named Parameter: Constructor
  Place({required this.name, required this.image, required this.location});
}

// Place object of type "List" => named 'placelist'
List<Place>placelist=[
  Place(name: "Spring", image: 'assets/spring.png', location: 'National Park'),
  Place(name: "Summer", image: 'assets/summer.jpg', location: 'Jubilee Hills'),
  Place(name: "Autumn", image: 'assets/autumn.jpg', location: 'Pennsylvania'),
  Place(name: "Winter", image: 'assets/winter.jpg', location: 'Andaman Coast'),
];

class Category{
  final Color color;
  final String name;
  final IconData icon;

  // Named Parameter: Constructor
  Category({required this.color, required this.name, required this.icon});
}
List<Category>popularcategory=[
  Category(color: Colors.red, name: 'Food', icon: Icons.fastfood_outlined),
  Category(color: Colors.brown, name: 'Hiking', icon: Icons.hiking_outlined),
  Category(color: Colors.greenAccent, name: 'Travel', icon: Icons.travel_explore_outlined),
  Category(color: Colors.blue, name: 'Music', icon: Icons.music_note_outlined),
];