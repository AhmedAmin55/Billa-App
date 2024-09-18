import 'package:flutter/material.dart';

import '../../../../core/uitils/app_colors.dart';
import '../../../home/data/food_model.dart';

class CustomDialog extends StatelessWidget {
  CustomDialog({super.key, required this.index, required this.favFood});
   final List<FoodModel> favFood;
   int index;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: AppColors.backgrand,
      child: Container(
        height: size.height*0.55,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                favFood[index].mealImage,
                width: 200,
                height: 120,
                fit: BoxFit.cover,
              ),
              SizedBox(height: size.height*0.02,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    favFood[index].MealName,
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    "${favFood[index].mealPrice} \$",
                    style: const TextStyle(
                      color: AppColors.priceColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height*0.01,),
              Text(
                favFood[index].mealDescription,
                style: TextStyle(
                    color: AppColors.black.withOpacity(0.50),
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
