// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:mainpage/src/Screens/HomeScreen.dart';
import 'package:mainpage/src/Widgets/navigation.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(const Screen3());
}

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  Widget? activeScreen;
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          // ignore: deprecated_member_use
          useMaterial3: true,
          // scaffoldBackgroundColor:const Color.fromARGB(0, 13, 172, 175),
          scaffoldBackgroundColor: const Color(0xFFA9907E),
        ),
        home: Scaffold(
            body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                  height: 400,
                  child: Stack(
                    children: [
                      CardS3(),
                      Positioned(
                          bottom: 60,
                          right: 100,
                          width: 250,
                          height: 250,
                          child: Pizza()),
                    ],
                  ),
                ),
                SizedBox(
                  height: 310,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
                          child: Text(
                            'Food Finder',
                            style: TextStyle(
                                fontSize: 40,
                                 // fontFamily: 'Allura',
                                // fontFamily: 'Fugaz_One',
                                fontFamily: 'Pacifico',
                                // fontFamily: 'Protest_Guerrilla',
                                // fontFamily: 'Spectral',
                                // fontFamily: 'Tangerine',
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                //  textAlign: TextAlign.start,
                                ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(25, 0, 25, 30),
                          child: Text(
                            'An Unrivalved selection of restaurant what you want',
                            style: TextStyle(
                              // textAlign: TextAlign.start,
                              fontSize: 17,
                           fontFamily: 'Pacifico',
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                            // print('Get Started Button is pressed');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  Navigation()),
                            );
                          },
                          icon: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Get Started',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )));
  }
}

class CardS3 extends StatelessWidget {
  const CardS3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 430,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 10,
              height: 350,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: Colors.black, // Border color
                  //   width: 2, // Border width
                  // ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                        'Assests/images/try1.webp'), // Adjust the image path
                    fit: BoxFit.cover, // Adjust the fit as needed
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: 430,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 120,
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        // border: Border.all(
                        //   color: Colors.black, // Border color
                        //   width: 2, // Border width
                        // ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              'Assests/images/try2-2.jpeg'), // Adjust the image path
                          fit: BoxFit.cover, // Adjust the fit as needed
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 240,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      // border: Border.all(
                      //   color: Colors.black, // Border color
                      //   width: 2, // Border width
                      // ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                            'Assests/images/try2-1.jpeg'), // Adjust the image path
                        fit: BoxFit.cover, // Adjust the fit as needed
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Pizza extends StatefulWidget {
  const Pizza({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PizzaState createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
          seconds: 20), // Adjust the animation duration as needed
    )..repeat(); // Repeat the animation infinitely
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 250,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.rotate(
            angle: _controller.value *
                2.0 *
                3.14, // Rotate 360 degrees (2π radians)
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                  image: AssetImage('Assests/images/piza2.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}