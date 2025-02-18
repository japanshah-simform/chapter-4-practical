import 'package:flutter/material.dart';
import 'modules/home/homepage.dart';
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
      home: const HomePage(),
    );
  }
}
