import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/theme.dart';
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
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  Color get _color => widget.isDarkScreen
      ? FlutterEducationTheme.secondaryColor
      : FlutterEducationTheme.primaryColor;

  double _opacity = 0;

  void startLinearProgressAnimation() {
    if (widget.difficultyValue <= 0) {
      _controller = AnimationController(vsync: this);
      return;
    }
    _controller = AnimationController(
      vsync: this,
      upperBound: widget.difficultyValue,
      duration: const Duration(seconds: 1),
    );
    _controller.forward();
  }

  @override
  void initState() {
    super.initState();
    startLinearProgressAnimation();
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
                          animation: _controller,
                          builder: (context, _) {
                            return LinearProgressIndicator(
                              backgroundColor: Colors.transparent,
                              valueColor: AlwaysStoppedAnimation<Color>(_color),
                              value: _controller.value,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Focus(
                    autofocus: true,
                    onFocusChange: (value) => _opacity = 1,
                    child: AnimatedOpacity(
                      duration: const Duration(seconds: 1),
                      opacity: _opacity,
                      child: Text(
                        widget.description,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.abhayaLibre(color: _color),
                      ),
                    ),
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
}
