import 'package:flutter/material.dart';
import 'package:mainpage/core/App_assest.dart';
import 'package:mainpage/core/App_icons.dart';
import 'package:mainpage/src/models/Homecard.dart';
import 'package:mainpage/src/models/buttom-nevigation-item.dart';
import 'package:mainpage/src/models/food.dart';
// import 'package:mainpage/src/models/food.dart';
// import 'package:flutter_japanese_restaurant_app/core/app_icon.dart';
// import 'package:flutter_japanese_restaurant_app/core/app_asset.dart';
// import 'package:flutter_japanese_restaurant_app/src/model/food.dart';
// import 'package:flutter_japanese_restaurant_app/src/model/food_category.dart';
// import 'package:flutter_japanese_restaurant_app/src/model/bottom_navigation_item.dart';

// class AppData {
//   const AppData._();

const dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting "
    "industry. Lorem Ipsum has been the industry's standard dummy text ever "
    "since the 1500s, when an unknown printer took a galley of type and "
    "scrambled it to make a type specimen book. It has survived not only five "
    "centuries, but also the leap into electronic typesetting, remaining "
    "essentially unchanged. It was popularised in the 1960s with the release "
    "of Letraset sheets containing Lorem Ipsum passages, and more recently "
    "with desktop publishing software like Aldus PageMaker including versions "
    "of Lorem Ipsum.";

//   static List<Food> foodItems = [
//     Food(
//       AppAsset.sushi1,
//       "Sushi1",
//       10.0,
//       1,
//       false,
//       dummyText,
//       5.0,
//       // FoodType.sushi,
//       150,
//     ),
//     Food(
//       AppAsset.sushi2,
//       "Sushi2",
//       15.0,
//       1,
//       false,
//       dummyText,
//       3.5,
//       // FoodType.sushi,
//       652,
//     ),
//     Food(
//       AppAsset.sushi3,
//       "Sushi3",
//       20.0,
//       1,
//       false,
//       dummyText,
//       4.0,
//       // FoodType.sushi,
//       723,
//     ),
//     Food(
//       AppAsset.sushi4,
//       "Sushi4",
//       40.0,
//       1,
//       false,
//       dummyText,
//       2.5,
//       // FoodType.kebab,
//       456,
//     ),
//     Food(
//       AppAsset.sushi5,
//       "Sushi5",
//       10.0,
//       1,
//       false,
//       dummyText,
//       4.5,
//       // FoodType.kebab,
//       650,
//     ),
//     Food(
//       AppAsset.sushi6,
//       "Sushi6",
//       20.0,
//       1,
//       false,
//       dummyText,
//       1.5,
//       // FoodType.burger,
//       350,
//     ),
//     Food(
//       AppAsset.sushi7,
//       "Sushi7",
//       12.0,
//       1,
//       false,
//       dummyText,
//       3.5,
//       // FoodType.burger,
//       265,
//     ),
//     Food(
//       AppAsset.sushi8,
//       "Sushi8",
//       30.0,
//       1,
//       false,
//       dummyText,
//       4.0,
//       // FoodType.ramen,
//       890,
//     ),
//     Food(
//       AppAsset.sushi9,
//       "Sushi9",
//       10.0,
//       1,
//       false,
//       dummyText,
//       5.0,
//       // FoodType.ramen,
//       900,
//     ),
//     Food(
//       AppAsset.sushi10,
//       "Sushi10",
//       15.0,
//       1,
//       false,
//       dummyText,
//       3.5,
//       FoodType.ramen,
//       420,
//     ),
//     Food(
//       AppAsset.sushi11,
//       "Sushi11",
//       25.0,
//       1,
//       false,
//       dummyText,
//       3.0,
//       FoodType.tempura,
//       263,
//     ),
//     Food(
//       AppAsset.sushi12,
//       "Sushi12",
//       20.0,
//       1,
//       false,
//       dummyText,
//       5.0,
//       FoodType.tempura,
//       560,
//     ),
//   ];

//   static List<BottomNavigationItem> bottomNavigationItems = [
//     BottomNavigationItem(
//       const Icon(Icons.home_outlined),
//       const Icon(Icons.home),
//       'Home',
//       isSelected: true,
//     ),
//     BottomNavigationItem(
//       const Icon(Icons.shopping_cart_outlined),
//       const Icon(Icons.shopping_cart),
//       'Shopping cart',
//     ),
//     BottomNavigationItem(
//       const Icon(AppIcon.outlinedHeart),
//       const Icon(AppIcon.heart),
//       'Favorite',
//     ),
//     BottomNavigationItem(
//       const Icon(Icons.person_outline),
//       const Icon(Icons.person),
//       'Profile',
//     )
//   ];

// static List<FoodCategory> categories = [
//   FoodCategory(FoodType.all, true),
//   FoodCategory(FoodType.sushi, false),
//   FoodCategory(FoodType.kebab, false),
//   FoodCategory(FoodType.tempura, false),
//   FoodCategory(FoodType.ramen, false),
//   FoodCategory(FoodType.burger, false),
// ];
// }
List<BottomNavigationItem> bottomNavigationItems = [
  BottomNavigationItem(
    const Icon(Icons.home_outlined),
    const Icon(Icons.home),
    'Home',
    isSelected: true,
  ),
  BottomNavigationItem(
    const Icon(Icons.shopping_cart_outlined),
    const Icon(Icons.shopping_cart),
    'Shopping cart',
  ),
  BottomNavigationItem(
    const Icon(AppIcon.outlinedHeart),
    const Icon(AppIcon.heart),
    'Favorite',
  ),
  BottomNavigationItem(
    const Icon(Icons.person_outline),
    const Icon(Icons.person),
    'Profile',
  )
];
const availableCategories = [
  HomeCard(
      id: 'c1',
      title: 'Table Booking',
      color: Color(0xFF377D71),
      image: AppAsset.picture1,
      route: '/book_table'),
  HomeCard(
      id: 'c6',
      title: 'Hot Deals',
      color: Color(0xFFEAD8C0),
      image: AppAsset.picture6,
      route: '/hot_deals'),
  HomeCard(
      id: 'c3',
      title: 'Dinner',
      color: Color(0xFFEAD8C0),
      image: AppAsset.picture3,
      route: '/dinner_screen'),
  HomeCard(
      id: 'c4',
      title: 'Break Fast',
      color: Color(0xFFA9907E),
      image: AppAsset.picture4,
      route: '/break_fast'),
  HomeCard(
      id: 'c5',
      title: 'Fast Food',
      color: Color(0xFFA9907E),
      image: AppAsset.picture5,
      route: '/fast_food'),
  HomeCard(
      id: 'c2',
      title: 'Lunch ',
      color: Color(0xFF377D71),
      image: AppAsset.picture2,
      route: '/lunch_screen'),
];

final availablelunch = [
  Food(
    id: 'a1',
    title: 'Chicken Qourma',
    color: const Color(0xFF377D71),
    image: AppAsset.picture2,
    // route: '/book_table'),
    price: 350,
    offprice: 400,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),

  Food(
    id: 'a2',
    title: 'Chicken Karahi',
    color: const Color(0xFFEAD8C0),
    image: AppAsset.picture6,
    price: 500,
    offprice: 600,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  // route: '/hot_deals'),
  Food(
    id: 'a3',
    title: 'White Chicken',
    color: const Color(0xFFA9907E),
    image: AppAsset.picture3,
    price: 500,
    offprice: 600,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  // route: '/dinner_screen'),
  Food(
    id: 'a4',
    title: 'Achar Ghoust',
    color: const Color(0xFF377D71),
    image: AppAsset.picture4,
    price: 500,
    offprice: 600,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  Food(
    id: 'a5',
    title: 'Chicken Biryani',
    color: const Color(0xFFEAD8C0),
    image: AppAsset.picture5,
    price: 400,
    offprice: 500,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  Food(
    id: 'a6',
    title: 'Chicken Palauo',
    color: const Color(0xFFA9907E),
    image: AppAsset.picture5,
    price: 40,
    offprice: 500,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  // route: '/break_fast'),
  Food(
    id: 'a7',
    title: 'Vegetable',
    color: const Color(0xFF377D71),
    image: AppAsset.picture5,
    price: 200,
    offprice: 250,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  // route: '/fast_food'),
  Food(
    id: 'a8',
    title: 'Daal Chana ',
    color: const Color(0xFFEAD8C0),
    image: AppAsset.picture2,
    price: 200,
    offprice: 250,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  // route: '/lunch_screen'),
  Food(
    id: 'a9',
    title: 'Daal Maash ',
    color: const Color(0xFFA9907E),
    image: AppAsset.picture2,
    price: 250,
    offprice: 300,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  // route: '/lunch_screen'),
  Food(
    id: 'a10',
    title: 'channay ',
    color: const Color(0xFF377D71),
    image: AppAsset.picture2,
    price: 200,
    offprice: 250,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  Food(
    id: 'a11',
    title: 'Naan ',
    color: const Color(0xFFEAD8C0),
    image: AppAsset.picture2,
    price: 20,
    offprice: 25,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  Food(
    id: 'a12',
    title: 'Roti ',
    color: const Color(0xFFA9907E),
    image: AppAsset.picture2,
    price: 10,
    offprice: 15,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),

  // route: '/lunch_screen'),
];

final availableBreakfasts = [
  Food(
    id: 'b1',
    title: 'Paratha',
    color: const Color(0xFF377D71),
    image: AppAsset.picture1,
    // route: '/book_table'),
    price: 350,
    offprice: 400,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),

  Food(
    id: 'b2',
    title: 'Chicken Karahi',
    color: const Color(0xFFEAD8C0),
    image: AppAsset.picture6,
    price: 500,
    offprice: 600,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  // route: '/hot_deals'),
  Food(
    id: 'b3',
    title: 'White Chicken Qourma',
    color: const Color(0xFFEAD8C0),
    image: AppAsset.picture3,
    price: 500,
    offprice: 600,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  // route: '/dinner_screen'),
  Food(
    id: 'b4',
    title: 'Achar Ghoust',
    color: const Color(0xFFA9907E),
    image: AppAsset.picture4,
    price: 500,
    offprice: 600,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  Food(
    id: 'b5',
    title: 'Chicken Biryani',
    color: const Color(0xFFA9907E),
    image: AppAsset.picture5,
    price: 400,
    offprice: 500,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  Food(
    id: 'b6',
    title: 'Chicken Palauo',
    color: const Color(0xFFA9907E),
    image: AppAsset.picture5,
    price: 40,
    offprice: 500,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  // route: '/break_fast'),
  Food(
    id: 'b7',
    title: 'Vegetable',
    color: const Color(0xFFA9907E),
    image: AppAsset.picture5,
    price: 200,
    offprice: 250,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  // route: '/fast_food'),
  Food(
    id: 'b8',
    title: 'Daal Chana ',
    color: const Color(0xFF377D71),
    image: AppAsset.picture2,
    price: 200,
    offprice: 250,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  // route: '/lunch_screen'),
  Food(
    id: 'b9',
    title: 'Daal Maash ',
    color: const Color(0xFF377D71),
    image: AppAsset.picture2,
    price: 250,
    offprice: 300,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  // route: '/lunch_screen'),
  Food(
    id: 'b10',
    title: 'channay ',
    color: const Color(0xFF377D71),
    image: AppAsset.picture2,
    price: 200,
    offprice: 250,
    quantity: 1,
    isfavorite: false,
    descroption: dummyText,
  ),
  // route: '/lunch_screen'),
];
