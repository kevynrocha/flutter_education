import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';
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
      builder: (_, __) => Stack(
        children: [
          PageView.builder(
            itemCount: _homeController.tweenSequenceItems.length,
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, index) => Stack(
              children: [
                Container(
                  color: TweenSequence(_homeController.tweenSequenceItems)
                      .evaluate(
                    AlwaysStoppedAnimation(_factor),
                  ),
                  child: BodyContentWidget(
                    imagePath: children[index].imagePath,
                  ),
                ),
              ],
            ),
          ),
          PageViewIndicatorWidget(
            currentScreen: _currentScreen,
            totalScreens: children.length,
            isDarkScreen: currentItem.isDarkScreen,
          ),
          AnimatedItemsWidget(factor: _factor),
          BodyFooterWidget(
            description: currentItem.description,
            isDarkScreen: currentItem.isDarkScreen,
            difficultyValue: currentItem.difficultyValue,
          ),
        ],
      ),
    );
  }

  void _onPageChanged(int index) {
    _homeController.linearProgressAnimationController.animateTo(
      children[index].difficultyValue,
    );
    _homeController.opacityAnimationController.value = 0;
    _homeController.opacityAnimationController.animateTo(1);
    _currentScreen = index;
  }

  double get _factor {
    try {
      return _pageController.page! / 3;
    } catch (_) {
      return 0;
    }
  }
}
