import 'package:flutter/material.dart';

import '../../../../core/uitils/app_colors.dart';
import '../../data/list_of_food.dart';

class MealWidget extends StatefulWidget {
  const MealWidget({super.key, required this.index});

  final int index;

  @override
  State<MealWidget> createState() => _MealWidgetState();
}

class _MealWidgetState extends State<MealWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(alignment: Alignment.topRight, children: [
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              foods[widget.index].mealImage,
              width: 80,
              height: 80,
            ),
            Text(
              foods[widget.index].MealName,
              style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              "${foods[widget.index].mealPrice} \$",
              style: const TextStyle(
                  color: AppColors.priceColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GestureDetector(
          onTap: () {
            setState(() {});
            foods[widget.index].favorite = !foods[widget.index].favorite;
          },
          child: CircleAvatar(
              backgroundColor: AppColors.priceColor.withOpacity(0.10),
              child: foods[widget.index].favorite == true
                  ? const Icon(
                      Icons.favorite,
                      color: AppColors.priceColor,
                    )
                  : const Icon(
                      Icons.favorite_border,
                      color: AppColors.priceColor,
                    )),
        ),
      )
    ]);
  }
}
