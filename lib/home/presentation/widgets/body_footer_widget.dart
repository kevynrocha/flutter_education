import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/theme.dart';
import '../controllers/home_controller.dart';
import 'button_widget.dart';

class BodyFooterWidget extends StatefulWidget {
  static const double _linearProgressHeight = 6;
  static const double _linearProgressWidth = 92;
  static const double _offsetBottom = 120;

  const BodyFooterWidget({
    super.key,
    required this.description,
    required this.difficultyValue,
    this.isDarkScreen = false,
  });

  final bool isDarkScreen;
  final String description;
  final double difficultyValue;

  @override
  State<BodyFooterWidget> createState() => _BodyFooterWidgetState();
}

class _BodyFooterWidgetState extends State<BodyFooterWidget>
    with TickerProviderStateMixin {
  final HomeController _homeController = HomeController.instance;

  Color get _color => widget.isDarkScreen
      ? FlutterEducationTheme.secondaryColor
      : FlutterEducationTheme.primaryColor;

  void _startAnimation() {
    _homeController.linearProgressAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _homeController.opacityAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _homeController.opacityAnimationController.animateTo(1);
    _homeController.linearProgressAnimationController.animateTo(
      widget.difficultyValue,
    );
  }

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: BodyFooterWidget._offsetBottom,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            IgnorePointer(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Difficulty',
                        style: TextStyle(
                          color: _color,
                          fontFamily: 'Metropolis',
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        height: BodyFooterWidget._linearProgressHeight,
                        width: BodyFooterWidget._linearProgressWidth,
                        decoration: BoxDecoration(
                          border: Border.all(color: _color),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: AnimatedBuilder(
                          animation:
                              _homeController.linearProgressAnimationController,
                          builder: (_, __) {
                            return LinearProgressIndicator(
                              backgroundColor: Colors.transparent,
                              valueColor: AlwaysStoppedAnimation<Color>(_color),
                              value: _homeController
                                  .linearProgressAnimationController.value,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  AnimatedBuilder(
                    animation: _homeController.opacityAnimationController,
                    builder: (_, __) {
                      return Opacity(
                        opacity:
                            _homeController.opacityAnimationController.value,
                        child: Text(
                          widget.description,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.abhayaLibre(color: _color),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const ButtonWidget(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _homeController.dispose();
    super.dispose();
  }
}
