import 'package:budget_buddy/screens/home/views/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appView extends StatelessWidget {
  const appView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.light(background: Colors.grey.shade100, onBackground: Colors.black, primary: const Color(0xFF00B2E7), secondary: const Color(0xFFE064F7), tertiary: const Color(0xFFFF8D6C), outline: Colors.grey)),
      home: HomeScreen(),
    );
  }
}

