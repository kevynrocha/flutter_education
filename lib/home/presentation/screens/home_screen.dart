import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BodyWidget(children: HomeController.instance.items),
          const BottomNavigationBarWidget(),
        ],
      ),
    );
  }
}
