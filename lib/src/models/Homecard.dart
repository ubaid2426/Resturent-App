// // enum FoodType { all, sushi, kebab, tempura, ramen, burger }

// import 'dart:ui';

// class Card {
//   String image;
//   String name;
//   double price;
//   double ofprice;
//   Color color;

//   Card(
//     this.image,
//     this.name,
//     this.price,
//     this.ofprice,
//     this.color,
//   );
// }

import 'package:flutter/material.dart';

class HomeCard {
  const HomeCard({
    required this.id,
    required this.title,
    required this.color,
    required this.image,
      required this.route,
    // required this.price,
    // required this.offprice,
  });

  final String id;
  final String title;
  final Color color;
  final String image;
    final String route;
  // final int price;
  // final int offprice;
}
