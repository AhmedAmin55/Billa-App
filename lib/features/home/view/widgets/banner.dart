import 'package:flutter/material.dart';

import '../../../../core/uitils/app_images.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Image.asset(
        AppImages.banner,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
