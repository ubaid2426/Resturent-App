// // enum FoodType { all, sushi, kebab, tempura, ramen, burger }

// class Food {
//   String image;
//   String name;
//   double price;
//   int quantity;
//   bool isFavorite;
//   String description;
//   double score;
//   // FoodType type;
//   int voter;

//   Food(
//     this.image,
//     this.name,
//     this.price,
//     this.quantity,
//     this.isFavorite,
//     this.description,
//     this.score,
//     // this.type,
//     this.voter,
//   );
// }

import 'package:flutter/material.dart';

class Food {
  Food({
    required this.id,
    required this.title,
    required this.color,
    required this.image,
    required this.price,
    required this.offprice,
    required this.isfavorite,
    required this.quantity,
    required this.descroption
  });

  final String id;
  final String title;
  final Color color;
  final String image;
  final double price;
  final double offprice;
  bool isfavorite;
  double quantity;
  final String descroption;
}
