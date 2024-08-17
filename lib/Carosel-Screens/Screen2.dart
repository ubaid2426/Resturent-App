import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
// import 'package:mainpage/src/Screens/HomeScreen.dart';
import 'package:mainpage/src/Widgets/navigation.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(const Screen2());
}

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
          scaffoldBackgroundColor: const Color(0xFF377D71),
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
                      Card1(),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        width: 250,
                        height: 250,
                        child: Card2(),
                      ),
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
                            'Explore special places to eat that match your needs',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              fontFamily: 'Allura',
                              // fontFamily: 'Fugaz_One',
                              // fontFamily: 'Pacifico',
                              // fontFamily: 'Protest_Guerrilla',
                              // fontFamily: 'Spectral',
                              // fontFamily: 'Tangerine',
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

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 250,
      child: Transform.rotate(
        angle: 0.5, // Rotate by 0.5 radians
        child: const DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            image: DecorationImage(
              image: AssetImage(
                  'Assests/images/10001.jpg'), // Adjust the image path
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
        ),
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 250,
      child: Transform.rotate(
        angle: -0.5, // Rotate by 0.5 radians
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
                  'Assests/images/10005.jpeg'), // Adjust the image path
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
        ),
      ),
    );
  }
}
