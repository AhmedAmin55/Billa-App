import 'package:billa__app/features/home/view/widgets/banner.dart';
import 'package:billa__app/features/home/view/widgets/meal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/list_of_food.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: CustomBanner(),
            ),
          ),
          SliverGrid.builder(
            itemCount: foods.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
            itemBuilder: (context, index) {
              return MealWidget(index: index);
            },
          )
        ],
      ),
    );
  }
}
