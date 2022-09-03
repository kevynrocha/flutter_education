import 'package:flutter/material.dart';

import '../../../theme/theme.dart';
import '../models/body_content_ui_model.dart';
import 'widgets.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key, required this.children});

  final List<BodyContentUiModel> children;

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  int _currentScreen = 0;

  final List<TweenSequenceItem<Color?>> _tweenSequenceItems = [
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

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (_, __) {
        final double color = _pageController.hasClients
            ? _pageController.page! / _tweenSequenceItems.length
            : 0;

        return Stack(
          children: [
            PageView.builder(
              itemCount: _tweenSequenceItems.length,
              controller: _pageController,
              onPageChanged: (index) => _currentScreen = index,
              itemBuilder: (context, index) => Container(
                color: TweenSequence(_tweenSequenceItems).evaluate(
                  AlwaysStoppedAnimation(color),
                ),
                child: BodyContentWidget(
                  imagePath: widget.children[index].imagePath,
                ),
              ),
            ),
            PageViewIndicatorWidget(currentScreen: _currentScreen),
            ...List.generate(
              widget.children.length,
              (index) => BodyFooterWidget(
                description: widget.children[_currentScreen].description,
                isDarkScreen: widget.children[_currentScreen].isDarkScreen,
                difficultyValue:
                    widget.children[_currentScreen].difficultyValue,
              ),
            ),
          ],
        );
      },
    );
  }
}
