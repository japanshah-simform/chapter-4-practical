import 'package:flutter/material.dart';
import 'modules/home/homepage.dart';
import 'utils/constants/string_constants.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringConstants.projectTitle,
      theme: lightTheme,
      home: const HomePage(),
    );
  }
}
