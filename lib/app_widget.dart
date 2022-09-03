import 'package:flutter/material.dart';

import 'home/presentation/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Education',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
