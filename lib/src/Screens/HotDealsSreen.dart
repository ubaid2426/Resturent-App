// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainpage/core/AppDummyData.dart';
import 'package:mainpage/src/Screens/food_detail_screen.dart';
import 'package:mainpage/src/Widgets/Card.dart';
// import 'package:flutter/widgets.dart';
// import 'package:mainpage/src/Screens/HomeScreen.dart';

void main() {
  runApp(const HotDealsScreen());
}

class HotDealsScreen extends StatefulWidget {
  const HotDealsScreen({super.key});

  @override
  State<HotDealsScreen> createState() => _HotDealsScreenState();
}

class _HotDealsScreenState extends State<HotDealsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        // ignore: deprecated_member_use
        useMaterial3: true,
        // scaffoldBackgroundColor:const Color.fromARGB(0, 13, 172, 175),
        scaffoldBackgroundColor: const Color(0xFF8BCCC1),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lunch Screen'),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 950,
          child: GridView(
            reverse: false,
            // width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(7),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
              // width: MediaQuery.of(context).size.width,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: [
              // availableCategories.map((category) => CategoryGridItem(category: category)).toList()
              for (final category in availablelunch)
                GestureDetector(
                  onTap: () {
                    final selectedCategory = availablelunch
                        .firstWhere((element) => element.id == category.id);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            FoodDetailScreen(food: selectedCategory),
                      ),
                    );
                  },
                  child: Card12(
                    category: category,
                    onSelectCategory: () {
                      final selectedCategory = availablelunch
                          .firstWhere((element) => element.id == category.id);
                      Navigator.pushNamed(context, selectedCategory as String);
                      //  final selectedCategory = availableCategories
                      //       .firstWhere((category) => category.id == category.id);
                      //   Navigator.pushNamed(context, selectedCategory.route);
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
