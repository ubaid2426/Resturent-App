import 'package:flutter/material.dart';
import 'package:mainpage/core/AppDummyData.dart';
import 'package:mainpage/src/Screens/food_detail_screen.dart';
import 'package:mainpage/src/models/food.dart';

void main() {
  runApp(const Card());
}

class Card12 extends StatelessWidget {
  const Card12(
      {super.key, required this.category, required this.onSelectCategory});
  final Food category;
  final void Function() onSelectCategory;
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
        body: InkWell(
          onTap: () {
            final selectedCategory = availablelunch
                .firstWhere((element) => element.id == category.id);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodDetailScreen(food: selectedCategory),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: category.color,
              borderRadius: BorderRadius.circular(20), // Set border-radius here
            ),
            width: MediaQuery.of(context).size.width / 2,
            // height: MediaQuery.of(context).size.height,
            height: 280,
            child: Column(
              children: [
                SizedBox(
                  height: 170,
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
                      ),
                      // child: SizedBox(
                      //     height:
                      //         110), // Optional child to maintain the container's height
                    ),
                  ),
                  // ),
                ),
                Container(
                  height: 110,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'Yummy... 😋',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '${category.price}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              '${category.offprice}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            const Padding(
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
      padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
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
              Icons.add, // Use Icons.add for a plus sign icon
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
