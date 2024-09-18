import 'package:billa__app/features/home/view/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(BillaApp());
}

class BillaApp extends StatelessWidget {
  const BillaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
