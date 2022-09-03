import 'package:flutter/material.dart';

import '../models/body_content_ui_model.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<BodyContentUiModel> _bodyItems = [
    const BodyContentUiModel(
      imagePath: 'assets/images/book_plant.svg',
      difficultyValue: 0.5,
      description:
          'Explore the exciting natural world around us. This is your very own nature scrapbook, packed with fascinating facts and brilliant activities. Doodle, draw and colour and find out how plants grow as well as the different parts of plants, seeds, and flowers.',
    ),
    const BodyContentUiModel(
      imagePath: 'assets/images/book_vegetable.svg',
      difficultyValue: 0.8,
      description:
          'Diagrams, cross sections, and illustrations get kids up close and personal with glossy red peppers, plump orange pumpkins, little peas, and dozens of other vegetables; Learn about  color, climatic region in which the plants grow, and their uses.',
    ),
    const BodyContentUiModel(
      isDarkScreen: true,
      difficultyValue: 0.1,
      imagePath: 'assets/images/book_planet.svg',
      description:
          'Discover the amazing world of outer space as you scratch pictures of planets, comets, and spacecraft to reveal glittery, swirly, and even glow-in-the-dark colors beneath. Ask questions, seek answers and explore the natural world.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BodyWidget(children: _bodyItems),
          const BottomNavigationBarWidget(),
        ],
      ),
    );
  }
}
