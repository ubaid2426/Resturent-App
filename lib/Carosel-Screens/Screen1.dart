import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:mainpage/src/Screens/HomeScreen.dart';
import 'package:mainpage/src/Widgets/navigation.dart';
// import 'package:mainpage/src/Screens/HomeScreen.dart';
// import 'package:mainpage/src/Widgets/navigation.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(const Screen1());
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  Widget? activeScreen;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xFFEAD8C0),
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
                          padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                          child: Text(
                            'Find Your Table for any Occasion',
                            // style: GoogleFonts.montserrat(
                            //     fontSize: 24, fontWeight: FontWeight.bold),
                          style:  TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                  //  fontFamily: 'Raleway',
                                      fontFamily: 'Protest_Guerrilla',
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
                              // fontWeight: FontWeight.w300,
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
                                  builder: (context) => Navigation()),
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
    return Container(
      // useSafeArea:true,
      height: 250,
      width: 250,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        image: DecorationImage(
          image:
              AssetImage('Assests/images/table1.jpeg'), // Adjust the image path
          fit: BoxFit.cover, // Adjust the fit as needed
        ),
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 270,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        image: DecorationImage(
          image:
              AssetImage('Assests/images/table2.jpeg'), // Adjust the image path
          fit: BoxFit.cover, // Adjust the fit as needed
        ),
      ),
    );
  }
}
//     