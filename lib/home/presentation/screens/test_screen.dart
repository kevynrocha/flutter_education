import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TestScreen extends StatelessWidget {
  TestScreen({super.key});

  final PageController _pageController = PageController();

  final _tweenSequence = TweenSequence<Color?>([
    TweenSequenceItem(
      tween: ColorTween(begin: Colors.amber, end: Colors.indigo),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: ColorTween(begin: Colors.indigo, end: Colors.red),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: ColorTween(begin: Colors.red, end: Colors.red),
      weight: 1,
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _pageController,
        builder: (_, __) => Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: 3,
              itemBuilder: (_, __) => Container(
                color: _tweenSequence.evaluate(
                  AlwaysStoppedAnimation(_factor),
                ),
              ),
            ),
            AnimatedItems(factor: _factor),
          ],
        ),
      ),
    );
  }

  double get _factor {
    try {
      return _pageController.page! / 3;
    } catch (_) {
      return 0;
    }
  }
}

class AnimatedItems extends StatelessWidget {
  const AnimatedItems({super.key, required this.factor});

  final double factor;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Stack(
        children: [
          PlantAnimatedItems(factor: factor),
          VegetableAnimatedItems(factor: factor),
          PlanetAnimatedItems(factor: factor),
        ],
      ),
    );
  }
}

class PlantAnimatedItems extends StatelessWidget {
  static const double _size2 = 50;
  static const double _size4 = 60;
  static const double _size1 = 70;
  static const double _size3 = 150;
  static const double _size5 = 100;
  static const double _size6 = 250;

  PlantAnimatedItems({super.key, required this.factor});

  final double factor;

  final _tween2 = Tween<double>(begin: 80, end: -_size1);
  final _tween3 = Tween<double>(begin: 0, end: -_size2);
  final _tween4 = Tween<double>(begin: 0, end: -_size3);
  final _tween5 = Tween<double>(begin: 80, end: -_size3);
  final _tween6 = Tween<double>(begin: 30, end: -_size3);
  final _tween8 = Tween<double>(begin: 0, end: -_size5);

  final _tween7 = TweenSequence<double>([
    TweenSequenceItem(
      tween: Tween(begin: -80, end: 0),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 0, end: 0),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 0, end: -_size6),
      weight: 1,
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: _tween7.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)),
          bottom: 200,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_7.svg',
            width: _size6,
          ),
        ),
        Positioned(
          left: _tween8.evaluate(AlwaysStoppedAnimation(factor * 3)),
          bottom: 300,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_1.svg',
            width: _size5,
          ),
        ),
        Positioned(
          right: _tween2.evaluate(AlwaysStoppedAnimation(factor * 3)),
          bottom: 320,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_2.svg',
            width: _size1,
          ),
        ),
        Positioned(
          right: _tween3.evaluate(AlwaysStoppedAnimation(factor * 3)),
          bottom: 320,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_3.svg',
            width: _size2,
          ),
        ),
        Positioned(
          right: _tween4.evaluate(AlwaysStoppedAnimation(factor * 3)),
          top: 80,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_4.svg',
            width: _size3,
          ),
        ),
        Positioned(
          left: 120,
          top: _tween5.evaluate(AlwaysStoppedAnimation(factor * 3)),
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_5.svg',
            width: _size1,
          ),
        ),
        Positioned(
          left: _tween6.evaluate(AlwaysStoppedAnimation(factor * 3)),
          top: 180,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_6.svg',
            width: _size4,
          ),
        ),
        Positioned(
          left: _tween6.evaluate(AlwaysStoppedAnimation(factor * 3)),
          top: 80,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_8.svg',
            width: _size4,
          ),
        ),
      ],
    );
  }
}

class VegetableAnimatedItems extends StatelessWidget {
  static const double _size = 50;

  VegetableAnimatedItems({super.key, required this.factor});

  final _tween1 = TweenSequence<double>([
    TweenSequenceItem(
      tween: Tween(begin: -_size, end: 0),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 0, end: 0),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 0, end: -_size),
      weight: 1,
    ),
  ]);

  final _tween2 = TweenSequence<double>([
    TweenSequenceItem(
      tween: Tween(begin: -_size, end: 0),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 0, end: 0),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 0, end: -_size),
      weight: 1,
    ),
  ]);

  final double factor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: _tween1.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)),
          top: 0,
          bottom: 0,
          child: SvgPicture.asset(
            'assets/images/vegetable/animated_vegetable_1.svg',
            width: _size,
          ),
        ),
      ],
    );
  }
}

class PlanetAnimatedItems extends StatelessWidget {
  static const double _size = 200;

  PlanetAnimatedItems({super.key, required this.factor});

  final _tween = TweenSequence<double>([
    TweenSequenceItem(
      tween: Tween(begin: -200, end: -200),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -200, end: -200),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: Tween(begin: -200, end: 0),
      weight: 1,
    ),
  ]);

  final double factor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: _tween.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)),
          top: 0,
          bottom: 0,
          child: Center(
            child: Container(
              color: Colors.white,
              width: _size,
              height: 100,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: _tween.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)),
          child: Center(
            child: Container(
              color: Colors.white,
              width: _size,
              height: 100,
            ),
          ),
        ),
      ],
    );
  }
}
