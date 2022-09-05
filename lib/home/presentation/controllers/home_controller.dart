import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class HomeController {
  static HomeController instance = HomeController._();

  HomeController._();

  late AnimationController linearProgressAnimationController;
  late AnimationController opacityAnimationController;

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
