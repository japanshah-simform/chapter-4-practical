import 'package:flutter/material.dart';
import 'modules/home/homepage.dart';
import 'utils/theme/theme.dart';
import 'package:prac_4/modules/continue/ui/continue_screen.dart';
import 'modules/home/ui/homescreen.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practical 4',
      theme: lightTheme,
      // home: const ContinueScreen(),
      home: const HomePage(),
    );
  }
}
