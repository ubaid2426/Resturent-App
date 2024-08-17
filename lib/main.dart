// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainpage/Carosel/Carosel.dart';
// import 'package:mainpage/src/Screens/HomeScreen.dart';
// import 'package:mainpage/src/Widgets/HCard.dart';
// import 'package:flutter/rendering.dart';
// import 'package:mainpage/src/Widgets/HCard.dart';
// import 'package:flutter/widgets.dart';
// import 'package:mainpage/Carosel/Carosel.dart';
// import 'package:mainpage/src/Screens/HomeScreen.dart';
// import 'package:mainpage/src/Widgets/navigation.dart';
// import 'package:mainpage/src/Screens/HomeScreen.dart';
// import 'package:mainpage/Widgets/HorizontalBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const CarouselDemo();
  }
}
