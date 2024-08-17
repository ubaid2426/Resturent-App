// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:mainpage/Carosel/HomeScreencarousel.dart';
import 'package:mainpage/core/AppDummyData.dart';
import 'package:mainpage/src/Screens/BookTableScreen.dart';
import 'package:mainpage/src/Screens/DinnerScreen.dart';
import 'package:mainpage/src/Screens/FastFoodScreen.dart';
import 'package:mainpage/src/Screens/HotDealsSreen.dart';
import 'package:mainpage/src/Screens/LunchScreen.dart';
import 'package:mainpage/src/Screens/breakfastsScreen.dart';
import 'package:mainpage/src/Widgets/HCard.dart';
import 'package:mainpage/src/Widgets/HorizontalBar.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:mainpage/src/Widgets/navigation.dart';
// import 'package:mainpage/Widgets/HorizontalBar.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
// import 'package:mainpage/Carosel/HomeScreencarousel.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
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
            body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // CarouselDemo (),
                const HomeHead(),
                SearchBar(controller: _controller),
                const CarouselHome(),
                // const  HomeMenu12(),
                const HomeCArd(),
                // Navigation(),
              ],
            ),
          ),
        )));
  }
}

class HomeMenu12 extends StatelessWidget {
  const HomeMenu12({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              // width:300,
              color: Colors.red,
              height: 100,
              child: const HoverExpandList(),
            )
          ],
        ),
      ),
    );
  }
}

class HomeHead extends StatelessWidget {
  const HomeHead({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hi Ubaid',
                  style: TextStyle(
                    color: Color.fromARGB(108, 0, 0, 0),
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Hungry Now  ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                    children: [
                      WidgetSpan(
                       child: Text(
                           '🔥  ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 110, 7),
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      image: DecorationImage(
                        image: AssetImage(
                            'Assests/images/ubaid.jpg'), // Adjust the image path
                        fit: BoxFit.cover, // Adjust the fit as needed
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final TextEditingController controller;

  const SearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width - 100,
            height: 50,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon:
                    const Icon(Icons.search), // Search icon provided here
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
          ),
          const SizedBox(
            width: 35,
            height: 35,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                image: DecorationImage(
                  image: AssetImage(
                      'Assests/Icons/setting.png'), // Adjust the image path
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CarouselHome extends StatelessWidget {
  const CarouselHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        // color: Colors.red,
        child: const DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(200),
              topRight: Radius.circular(200),
            ),
            // color:Colors.green,
          ),
          child: HomePageCarousel(),
        ),
      ),
    );
  }
}

class HomeCArd extends StatelessWidget {
  const HomeCArd({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 1000,
      child: GridView(
        // width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          // width: MediaQuery.of(context).size.width,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
        ),
        children: [
          // availableCategories.map((category) => CategoryGridItem(category: category)).toList()
          for (final category in availableCategories)
            HCard(
              category: category,
              onSelectCategory: () {
                final selectedCategory = availableCategories
                    .firstWhere((element) => element.id == category.id);
                Navigator.pushNamed(context, selectedCategory.route);
                //  final selectedCategory = availableCategories
                //       .firstWhere((category) => category.id == category.id);
                //   Navigator.pushNamed(context, selectedCategory.route);
              },
            ),
        ],
      ),
    );
  }
}
