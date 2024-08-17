import 'package:flutter/material.dart';

void main() {
  runApp(PopupScreen());
}

class PopupScreen extends StatelessWidget {
  const PopupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _showFoodDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Food Delivery'),
          content: const Text(
              'Did you receive your food on your own or would you like to book a rider?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Own'),
              onPressed: () {
                Navigator.of(context).pop();
                _showResponseDialog(
                    context, 'You choose to receive the food on your own.');
              },
            ),
            TextButton(
              child: const Text('Book a Rider'),
              onPressed: () {
                Navigator.of(context).pop();
                _showResponseDialog(context, 'You chose to book a rider.');
              },
            ),
          ],
        );
      },
    );
  }

  void _showResponseDialog(BuildContext context, String response) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Response'),
          content: Text(response),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Delivery Detail'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: ThemeData()
          .copyWith(
            scaffoldBackgroundColor: const Color(0xFF8BCCC1),
          )
          .scaffoldBackgroundColor,
      body: Center(
        child: ElevatedButton(
          child: const Text('Check Food Delivery'),
          onPressed: () => _showFoodDialog(context),
        ),
      ),
    );
  }
}
