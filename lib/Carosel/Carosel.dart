// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mainpage/Carosel-Screens/Screen1.dart';
import 'package:mainpage/Carosel-Screens/Screen2.dart';
import 'package:mainpage/Carosel-Screens/Screen3.dart';

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
        height: MediaQuery.of(context).size.height,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
        autoPlay: true, // Auto play enabled
      ),
      // items: imgList
      //     .map((item) => Center(
      //       child: Image.network(
      //         item,
      //         fit: BoxFit.cover,
      //         height: MediaQuery.of(context).size.height,
      //       ),
      //     ))
      //     .toList(),
      items: screenList.map((item) => Center(child: item)).toList(),
    );
  }
}
