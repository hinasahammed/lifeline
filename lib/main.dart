import 'package:flutter/material.dart';
import 'package:lifeline/view/bottomNavigation/custom_bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lifeline',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff1A659E),
        ),
        useMaterial3: true,
      ),
      home: Auth(),
    );
  }
}
