import 'package:billa__app/core/uitils/app_colors.dart';
import 'package:billa__app/features/favorite/data/widgets/dalog.dart';
import 'package:flutter/material.dart';

import '../../home/data/food_model.dart';
import '../../home/data/list_of_food.dart';

class FavoriteBody extends StatefulWidget {
  const FavoriteBody({super.key});

  @override
  State<FavoriteBody> createState() => _FavoriteBodyState();
}

class _FavoriteBodyState extends State<FavoriteBody> {
  @override
  Widget build(BuildContext context) {
    List<FoodModel> favFood =
        foods.where((element) => element.favorite == true).toList();
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: favFood.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return CustomDialog(favFood: favFood, index: index);
                },
              );
            },
            leading: Image.asset(
              favFood[index].mealImage,
            ),
            title: Text(
              favFood[index].MealName,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              "${favFood[index].mealPrice} \$",
              style: const TextStyle(
                  color: AppColors.priceColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            trailing: GestureDetector(
              onTap: () {
                setState(() {
                  favFood[index].favorite = false;
                });
              },
              child: CircleAvatar(
                backgroundColor: AppColors.priceColor.withOpacity(0.10),
                child: const Icon(
                  Icons.favorite,
                  color: AppColors.priceColor,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
