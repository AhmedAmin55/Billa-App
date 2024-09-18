import 'package:billa__app/core/uitils/app_colors.dart';
import 'package:billa__app/core/uitils/app_images.dart';
import 'package:billa__app/core/uitils/app_texts.dart';
import 'package:billa__app/features/favorite/view/favorite_screen.dart';
import 'package:billa__app/features/home/view/widgets/home_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeBody(),
    FavoriteBody(),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgrand,
      appBar: AppBar(
        backgroundColor: AppColors.backgrand,
        centerTitle: true,
        title: Image.asset(
          AppImages.billa,
          height: size.height * 0.04,
        ),
      ),
      drawer: Drawer(
        width: size.width * 0.78,
        child: Column(
          children: [
            Container(
              height: size.height * 0.38,
              decoration: BoxDecoration(
                  color: AppColors.priceColor.withOpacity(0.60),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Row(
                      children: [
                        Text(
                          "Your Profile",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined)
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: size.height * 0.2,
                            width: size.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  AppImages.ana,
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name:",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                AppTexts.profileName,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Email:",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                AppTexts.profileEmail,
                                style: TextStyle(
                                    fontSize: 8, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)))),
                      backgroundColor: MaterialStateProperty.all(
                          AppColors.priceColor.withOpacity(0.20))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      CircleAvatar(
                          backgroundColor:
                              AppColors.priceColor.withOpacity(0.60),
                          child: Image.asset(
                            AppImages.account,
                            width: 20,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppTexts.account,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)))),
                      backgroundColor: MaterialStateProperty.all(
                          AppColors.priceColor.withOpacity(0.20))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      CircleAvatar(
                          backgroundColor:
                              AppColors.priceColor.withOpacity(0.60),
                          child: Image.asset(
                            AppImages.notifications,
                            width: 20,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppTexts.notifications,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)))),
                      backgroundColor: MaterialStateProperty.all(
                          AppColors.priceColor.withOpacity(0.20))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      CircleAvatar(
                          backgroundColor:
                              AppColors.priceColor.withOpacity(0.60),
                          child: Image.asset(
                            AppImages.setting,
                            width: 20,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppTexts.setting,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)))),
                      backgroundColor: MaterialStateProperty.all(
                          AppColors.priceColor.withOpacity(0.20))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      CircleAvatar(
                          backgroundColor:
                              AppColors.priceColor.withOpacity(0.60),
                          child: Image.asset(
                            AppImages.logOut,
                            width: 20,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppTexts.logOut,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (buttomIndex) {
          setState(() {
            currentIndex = buttomIndex;
          });
        },
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.black.withOpacity(0.20),
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: AppTexts.barHome,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: AppTexts.barFavorite,
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
