// // ignore: file_names

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// import 'package:mainpage/Carosel-Screens/Screen1.dart';
// import 'package:mainpage/Carosel-Screens/Screen2.dart';
// import 'package:mainpage/Carosel-Screens/Screen3.dart';

// final List<Widget> screenList = [
//   const Screen2(),
//   const Screen1(),
//   const Screen3(),
// ];
// void main() => runApp(const CarouselDemo());

// class CarouselDemo extends StatelessWidget {
//   const CarouselDemo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: FullscreenSliderDemo(),
//       ),
//     );
//   }
// }

// class FullscreenSliderDemo extends StatelessWidget {
//   const FullscreenSliderDemo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       options: CarouselOptions(
//         height: MediaQuery.of(context).size.height,
//         viewportFraction: 1.0,
//         enlargeCenterPage: false,
//         autoPlay: true, // Auto play enabled
//       ),
//       // items: imgList
//       //     .map((item) => Center(
//       //       child: Image.network(
//       //         item,
//       //         fit: BoxFit.cover,
//       //         height: MediaQuery.of(context).size.height,
//       //       ),
//       //     ))
//       //     .toList(),
//       items: screenList.map((item) => Center(child: item)).toList(),
//     );
//   }
// }





import 'package:carousel_slider/carousel_slider.dart'; // Import for CarouselSlider
import 'package:flutter/material.dart'; // Import for Flutter widgets

import 'package:mainpage/Carosel-Screens/Screen1.dart';
import 'package:mainpage/Carosel-Screens/Screen2.dart';
import 'package:mainpage/Carosel-Screens/Screen3.dart';

// List of widgets to be displayed in the carousel
final List<Widget> screenList = [
  const Screen2(),
  const Screen1(),
  const Screen3(),
];

void main() => runApp(const CarouselDemo());

class CarouselDemo extends StatelessWidget {
  const CarouselDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FullscreenSliderDemo(),
      ),
    );
  }
}

class FullscreenSliderDemo extends StatelessWidget {
  const FullscreenSliderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height, // Set height to full screen height
        viewportFraction: 1.0, // Ensure full width of the screen
        enlargeCenterPage: false, // No enlarging of the centered page
        autoPlay: true, // Enable auto play
        autoPlayInterval: const Duration(seconds: 3), // Interval for auto play
        autoPlayAnimationDuration: const Duration(milliseconds: 800), // Duration of animation
        scrollDirection: Axis.horizontal, // Direction of scroll
      ),
      items: screenList.map((item) => Center(child: item)).toList(),
    );
  }
}

