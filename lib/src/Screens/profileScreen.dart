import 'package:flutter/material.dart';
import 'package:mainpage/core/App_assest.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Image.asset(AppAsset.profileImage, width: 300),
          ),
          Text(
            "Hello Ubaid!",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAsset.githubImage, width: 60),
              const SizedBox(width: 10),
             const Text(
                "https://github.com/ABC....",
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
