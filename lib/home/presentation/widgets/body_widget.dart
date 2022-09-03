import 'package:flutter/material.dart';
import 'package:flutter_education/home/presentation/controllers/home_controller.dart';

import '../models/body_content_ui_model.dart';
import 'widgets.dart';

// ignore: must_be_immutable
class BodyWidget extends StatelessWidget {
  BodyWidget({super.key, required this.children});

  final List<BodyContentUiModel> children;

  final PageController _pageController = PageController();
  final HomeController _homeController = HomeController.instance;

  int _currentScreen = 0;
  BodyContentUiModel get currentItem => children[_currentScreen];

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (_, __) {
        final double color = _pageController.hasClients
            ? _pageController.page! / _homeController.tweenSequenceItems.length
            : 0;

        return Stack(
          children: [
            PageView.builder(
              itemCount: _homeController.tweenSequenceItems.length,
              controller: _pageController,
              onPageChanged: (index) {
                _homeController.linearProgressAnimationController.animateTo(
                  children[index].difficultyValue,
                );
                _homeController.opacityAnimationController.value = 0;
                _homeController.opacityAnimationController.animateTo(1);
                _currentScreen = index;
              },
              itemBuilder: (context, index) => Container(
                color:
                    TweenSequence(_homeController.tweenSequenceItems).evaluate(
                  AlwaysStoppedAnimation(color),
                ),
                child: BodyContentWidget(
                  imagePath: children[index].imagePath,
                ),
              ),
            ),
            PageViewIndicatorWidget(currentScreen: _currentScreen),
            BodyFooterWidget(
              description: currentItem.description,
              isDarkScreen: currentItem.isDarkScreen,
              difficultyValue: currentItem.difficultyValue,
            ),
          ],
        );
      },
    );
  }
}
