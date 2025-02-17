import 'package:flutter/material.dart';
import 'package:prac_4/modules/home/ui/home_screen.dart';

import '../../utils/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List pages = [
    HomeScreen(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            iconSize: 24,
            selectedFontSize: 14,
            selectedItemColor: AppColors.secondaryColor,
            selectedLabelStyle: TextStyle(color: AppColors.secondaryColor),
            selectedIconTheme: IconThemeData(
              color: AppColors.secondaryColor,
            ),
            unselectedFontSize: 14,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.circle,
                  ),
                  label: "Loans"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.history,
                  ),
                  label: "History"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_sharp,
                  ),
                  label: "Profile"),
            ]),
        backgroundColor: Colors.white,
        body: pages[currentIndex]);
  }
}
