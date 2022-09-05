import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnimatedItemsWidget extends StatelessWidget {
  const AnimatedItemsWidget({super.key, required this.factor});

  final double factor;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Stack(
        children: [
          _PlantAnimatedItems(factor: factor),
          _VegetableAnimatedItems(factor: factor),
          _PlanetAnimatedItems(factor: factor),
        ],
      ),
    );
  }
}

class _PlantAnimatedItems extends StatelessWidget {
  static const double _size01 = 50;
  static const double _size02 = 60;
  static const double _size03 = 70;
  static const double _size04 = 100;
  static const double _size05 = 150;
  static const double _size06 = 250;

  _PlantAnimatedItems({required this.factor});

  final double factor;

  final _tween1 = EdgeInsetsTween(
    begin: const EdgeInsets.only(left: 120, top: 80),
    end: const EdgeInsets.only(left: -70, top: -50),
  );

  final _tween2 = Tween<double>(begin: 0, end: -_size04);

  final _tween3 = TweenSequence<double>([
    TweenSequenceItem(
      tween: Tween(begin: -80, end: 0),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 0, end: 0),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 0, end: -_size06),
      weight: 1,
    ),
  ]);

  final _tween4 = EdgeInsetsTween(
    begin: const EdgeInsets.only(right: _size03, top: 360),
    end: const EdgeInsets.only(right: -_size03, top: 300),
  );

  final _tween5 = EdgeInsetsTween(
    begin: const EdgeInsets.only(right: 0, bottom: 320),
    end: const EdgeInsets.only(right: -_size01, bottom: 200),
  );

  final _tween6 = EdgeInsetsTween(
    begin: const EdgeInsets.only(right: 0, top: 80),
    end: const EdgeInsets.only(right: -_size05, top: 0),
  );

  final _tween7 = EdgeInsetsTween(
    begin: const EdgeInsets.only(left: 30, top: 180),
    end: const EdgeInsets.only(left: 60, top: -_size03),
  );

  final _tween8 = EdgeInsetsTween(
    begin: const EdgeInsets.only(left: 30, top: 80),
    end: const EdgeInsets.only(left: -_size05, top: 0),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: _tween3.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)),
          bottom: 200,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_7.svg',
            width: _size06,
          ),
        ),
        Positioned(
          left: _tween2.evaluate(AlwaysStoppedAnimation(factor * 3)),
          bottom: 300,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_1.svg',
            width: _size04,
          ),
        ),
        Positioned(
          right: _tween4.evaluate(AlwaysStoppedAnimation(factor * 3)).right,
          top: _tween4.evaluate(AlwaysStoppedAnimation(factor * 3)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_2.svg',
            width: _size03,
          ),
        ),
        Positioned(
          right: _tween5.evaluate(AlwaysStoppedAnimation(factor * 3)).right,
          bottom: _tween5.evaluate(AlwaysStoppedAnimation(factor * 3)).bottom,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_3.svg',
            width: _size01,
          ),
        ),
        Positioned(
          right: _tween6.evaluate(AlwaysStoppedAnimation(factor * 3)).right,
          top: _tween6.evaluate(AlwaysStoppedAnimation(factor * 3)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_4.svg',
            width: _size05,
          ),
        ),
        Positioned(
          left: _tween1.evaluate(AlwaysStoppedAnimation(factor * 3)).left,
          top: _tween1.evaluate(AlwaysStoppedAnimation(factor * 3)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_5.svg',
            width: _size03,
          ),
        ),
        Positioned(
          left: _tween7.evaluate(AlwaysStoppedAnimation(factor * 3)).left,
          top: _tween7.evaluate(AlwaysStoppedAnimation(factor * 3)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_6.svg',
            height: _size03,
          ),
        ),
        Positioned(
          left: _tween8.evaluate(AlwaysStoppedAnimation(factor * 3)).left,
          top: _tween8.evaluate(AlwaysStoppedAnimation(factor * 3)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_8.svg',
            width: _size02,
          ),
        ),
      ],
    );
  }
}

class _VegetableAnimatedItems extends StatelessWidget {
  static const double _size = 50;

  _VegetableAnimatedItems({required this.factor});

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

class _PlanetAnimatedItems extends StatelessWidget {
  static const double _size = 200;

  _PlanetAnimatedItems({required this.factor});

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
