import 'package:flutter/material.dart';
import 'package:flutter_education/home/presentation/controllers/home_controller.dart';
import 'package:flutter_education/home/presentation/screens/test_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          AnimatedItems(factor: _factor),
          BodyFooterWidget(
            description: currentItem.description,
            isDarkScreen: currentItem.isDarkScreen,
            difficultyValue: currentItem.difficultyValue,
          ),
        ],
      ),
    );
  }

  _onPageChanged(int index) {
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

class AnimatedItemsBodyWidget extends StatefulWidget {
  const AnimatedItemsBodyWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedItemsBodyWidget> createState() =>
      _AnimatedItemsBodyWidgetState();
}

class _AnimatedItemsBodyWidgetState extends State<AnimatedItemsBodyWidget>
    with SingleTickerProviderStateMixin {
  final HomeController _homeController = HomeController.instance;

  List<TweenSequenceItem<double?>> get tweenSequenceItems => [
        TweenSequenceItem(
          tween: Tween(
            begin: 0,
            end: -100,
          ),
          weight: 1,
        ),
        TweenSequenceItem(
          tween: Tween(
            begin: 0,
            end: -100,
          ),
          weight: 1,
        ),
        TweenSequenceItem(
          tween: Tween(
            begin: 0,
            end: -100,
          ),
          weight: 1,
        ),
      ];

  @override
  void initState() {
    super.initState();
    // _homeController.positionAnimationController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 300),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      top: 0,
      left: TweenSequence(tweenSequenceItems).evaluate(
        const AlwaysStoppedAnimation(0),
      ),
      child: IgnorePointer(
        child: SvgPicture.asset(
          'assets/images/plant/animated_plant_left.svg',
          width: 100,
        ),
      ),
    );
    // return AnimatedBuilder(
    //   animation: _homeController.positionAnimationController,
    //   builder: (_, __) {
    //     return Positioned(
    //       bottom: 0,
    //       top: 0,
    //       left: TweenSequence(tweenSequenceItems)
    //           .evaluate(const AlwaysStoppedAnimation(1)),
    //       child: IgnorePointer(
    //         child: SvgPicture.asset(
    //           'assets/images/plant/animated_plant_left.svg',
    //           width: 100,
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
