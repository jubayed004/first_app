import 'package:first_app/view/screen/Home/home_screen.dart';
import 'package:first_app/view/screen/Menu/menu_screen.dart';
import 'package:first_app/view/screen/pricing/pricing_screen.dart';

import 'package:flutter/material.dart';

import '../../../style/color/color_style.dart';
import '../Notification/notification_screen.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({super.key});

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  final  Pages = [Home_Page(),Pricing_Screen(),Notification_screen(),Menu_Screen()];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secondaryColor,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.secondaryColor,
          currentIndex: currentIndex,
          onTap: (int index){
            setState(() {
              currentIndex=index;
            });
          },
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.secondaryColor,
          // backgroundColor: Colors.red,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.local_offer_outlined),label: 'Price'),
            BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: 'Notification'),
            BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu'),
          ],
        ),
        body: Pages[currentIndex],
      ),
    );
  }
}