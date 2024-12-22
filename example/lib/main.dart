import 'package:flutter/material.dart';
import 'package:main_button/main_button.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    MainWidgetsUtil.init(
      context,
      designSize: const Size(375, 812),
      minTextAdapt: true,
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
