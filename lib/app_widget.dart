import 'package:flutter/material.dart';
import 'package:flutter_education/home/presentation/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Education',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
