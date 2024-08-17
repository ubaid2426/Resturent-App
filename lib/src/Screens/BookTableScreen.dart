// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:mainpage/src/Screens/HomeScreen.dart';

void main() {
  runApp(const BookTableScreen());
}

class BookTableScreen extends StatefulWidget {
  const BookTableScreen({super.key});

  @override
  State<BookTableScreen> createState() => _BookTableScreenState();
}

class _BookTableScreenState extends State<BookTableScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      home:Scaffold(
         appBar: AppBar(
        title: Text('Book Table Screen'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
        body:Column(),
      )
    );
  }
}
