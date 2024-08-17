import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mainpage/core/App_extension.dart';
import 'package:mainpage/core/App_icons.dart';
import 'package:mainpage/src/Widgets/EmptyWidget.dart';
import 'package:mainpage/src/controller/controller.dart';
// import 'package:mainpage/src/controller/FoodController.dart';
import 'package:mainpage/src/models/food.dart';

final FoodController controller = Get.put(FoodController());

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favorite screen",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: EmptyWidget(
        type: EmptyWidgetType.favorite,
        title: "Empty favorite",
        condition: controller.favoriteFood.isNotEmpty,
        child: ListView.separated(
          padding: const EdgeInsets.all(15),
          itemCount: controller.favoriteFood.length,
          itemBuilder: (_, index) {
            Food food = controller.favoriteFood[index];
            return Card(
              // color: Colors.black,
              // controller.isLightTheme
              //     ? Colors.white
              //     : DarkThemeColor.primaryLight,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                title: Text(
                  food.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                leading: Image.asset(food.image),
                subtitle: Text(
                  food.title, //extra please remove this line
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                trailing: const Icon(AppIcon.heart, color: Colors.redAccent),
              ),
            ).fadeAnimation(index * 0.6);
          },
          separatorBuilder: (_, __) {
            return const Padding(padding: EdgeInsets.only(bottom: 15));
          },
        ),
      ),
    );
  }
}

