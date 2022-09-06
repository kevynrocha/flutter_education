import 'package:flutter/material.dart';

import '../../../theme/theme.dart';
import '../models/body_content_ui_model.dart';

class HomeController {
  static HomeController instance = HomeController._();

  HomeController._();

  late AnimationController linearProgressAnimationController;
  late AnimationController opacityAnimationController;

  List<BodyContentUiModel> get items => [
        const BodyContentUiModel(
          imagePath: 'assets/images/plant/book_plant.svg',
          difficultyValue: 0.5,
          description:
              'Explore the exciting natural world around us. This is your very own nature scrapbook, packed with fascinating facts and brilliant activities. Doodle, draw and color and find out how plants grow as well as the different parts of plants, seeds, and flowers.',
        ),
        const BodyContentUiModel(
          imagePath: 'assets/images/vegetable/book_vegetable.svg',
          difficultyValue: 0.2,
          description:
              'Diagrams, cross sections, and illustrations get kids up close and personal with glossy red peppers, plump orange pumpkins, little peas, and dozens of other vegetables; Learn about  color, climatic region in which the plants grow, and their uses.',
        ),
        const BodyContentUiModel(
          isDarkScreen: true,
          difficultyValue: 0.8,
          imagePath: 'assets/images/planet/book_planet.svg',
          description:
              'Discover the amazing world of outer space as you scratch pictures of planets, comets, and spacecraft to reveal glittery, swirly, and even glow-in-the-dark colors beneath. Ask questions, seek answers and explore the natural world.',
        ),
      ];

  List<TweenSequenceItem<Color?>> get tweenSequenceItems => [
        TweenSequenceItem(
          tween: ColorTween(
            begin: FlutterEducationTheme.plantsBackgroundColor,
            end: FlutterEducationTheme.vegetablesBackgroundColor,
          ),
          weight: 1,
        ),
        TweenSequenceItem(
          tween: ColorTween(
            begin: FlutterEducationTheme.vegetablesBackgroundColor,
            end: FlutterEducationTheme.planetsBackgroundColor,
          ),
          weight: 1,
        ),
        TweenSequenceItem(
          tween: ColorTween(
            begin: FlutterEducationTheme.planetsBackgroundColor,
            end: FlutterEducationTheme.planetsBackgroundColor,
          ),
          weight: 1,
        ),
      ];

  void dispose() {
    linearProgressAnimationController.dispose();
    opacityAnimationController.dispose();
  }
}
