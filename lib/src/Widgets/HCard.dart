// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mainpage/src/Screens/BookTableScreen.dart';
import 'package:mainpage/src/Screens/DinnerScreen.dart';
import 'package:mainpage/src/Screens/FastFoodScreen.dart';
import 'package:mainpage/src/Screens/HotDealsSreen.dart';
import 'package:mainpage/src/Screens/LunchScreen.dart';
import 'package:mainpage/src/Screens/breakfastsScreen.dart';
import 'package:mainpage/src/models/Homecard.dart';

// void main() {
//   runApp(const HCard());
// }

class HCard extends StatelessWidget {
  const HCard({
    super.key,
    required this.category,
    required this.onSelectCategory,
  });
  final HomeCard category;
  final void Function() onSelectCategory;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/book_table': (context) => const BookTableScreen(),
        '/break_fast': (context) => const BreakFastscreen(),
        '/hot_deals': (context) => const HotDealsScreen(),
        '/dinner_screen': (context) => const DinnerScreen(),
        '/lunch_screen': (context) => const LunchScreen(),
        '/fast_food': (context) => const FastFoodScreen(),
        // Add more routes as needed for each category
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        // ignore: deprecated_member_use
        useMaterial3: true,
        // scaffoldBackgroundColor:const Color.fromARGB(0, 13, 172, 175),
        scaffoldBackgroundColor: const Color(0xFF6FC0B2),
      ),
      home: Scaffold(
        body: InkWell(
          //  height: 280,
          onTap: onSelectCategory,
          splashColor: category.color,
          borderRadius: BorderRadius.circular(16),
          child: Container(
            decoration: BoxDecoration(
              color: category.color,
              borderRadius: BorderRadius.circular(20), // Set border-radius here
            ),
            width: MediaQuery.of(context).size.width / 2,
            height: 275,
            child: Column(
              children: [
                SizedBox(
                  height: 165,
                  // color: const Color.fromARGB(255, 233, 9, 177),
                  child: Center(
                    child: Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width / 2 - 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(category.image),
                          fit: BoxFit.cover, // Cover the entire container
                        ),
                        color: Colors.red,
                      ),
                      // child: SizedBox(
                      //     height:
                      //         110), // Optional child to maintain the container's height
                    ),
                  ),
                  // ),
                ),
                SizedBox(
                  height: 110,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          category.title,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'starting Now',
                          style: TextStyle(
                            fontSize: 8.5,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: SizedBox(
                                width: 60,
                                child: DownSide(),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DownSide extends StatelessWidget {
  const DownSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
      child: Container(
        // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 246, 244, 244),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(0),
            topRight: Radius.circular(0),
            bottomRight: Radius.circular(15),
          ),
        ),
        width: 60,
        height: 60,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 21, 20, 20),
              borderRadius: BorderRadius.circular(10),
            ),
            width: 40,
            height: 40,
            child: const Icon(
              Icons.arrow_forward, // Use Icons.add for a plus sign icon
              size: 24, // Adjust the size of the icon as needed
              color: Color.fromARGB(
                  255, 248, 247, 247), // Set the color of the icon
            ),
          ),
        ),
      ),
    );
  }
}
