import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../dot/dot_animation.dart';

class PlantAnimatedItems extends StatelessWidget {
  static const double _size1 = 50;
  static const double _size2 = 60;
  static const double _size3 = 70;
  static const double _size4 = 100;
  static const double _size5 = 150;
  static const double _size6 = 250;

  PlantAnimatedItems({super.key, required this.factor});

  final double factor;

  final _tween1 = EdgeInsetsTween(
    begin: const EdgeInsets.only(left: 120, top: 79),
    end: const EdgeInsets.only(left: -70, top: -50),
  );

  final _tween2 = Tween<double>(begin: 0, end: -_size4);

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
      tween: Tween(begin: 0, end: -_size6),
      weight: 1,
    ),
  ]);

  final _tween4 = EdgeInsetsTween(
    begin: const EdgeInsets.only(right: _size3, top: 360),
    end: const EdgeInsets.only(right: -_size3, top: 300),
  );

  final _tween5 = EdgeInsetsTween(
    begin: const EdgeInsets.only(right: 0, bottom: 320),
    end: const EdgeInsets.only(right: -_size1, bottom: 200),
  );

  final _tween6 = EdgeInsetsTween(
    begin: const EdgeInsets.only(right: 0, top: 80),
    end: const EdgeInsets.only(right: -_size5, top: 0),
  );

  final _tween7 = EdgeInsetsTween(
    begin: const EdgeInsets.only(left: 30, top: 180),
    end: const EdgeInsets.only(left: 60, top: -_size3),
  );

  final _tween8 = EdgeInsetsTween(
    begin: const EdgeInsets.only(left: 30, top: 80),
    end: const EdgeInsets.only(left: -_size5, top: 0),
  );

  final _tween9 = TweenSequence<double>([
    TweenSequenceItem(
      tween: Tween(begin: -30, end: 0),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 0, end: 0),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 0, end: -_size4),
      weight: 1,
    ),
  ]);

  double get _totalFactor => factor * 3 / 2;
  double get _correctFactor => factor * 3;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DotsAnimated(factor: factor),
        Positioned(
          left: _tween3.evaluate(AlwaysStoppedAnimation(_totalFactor)),
          bottom: 200,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_7.svg',
            width: _size6,
          ),
        ),
        Positioned(
          right: _tween9.evaluate(AlwaysStoppedAnimation(_totalFactor)),
          top: 50,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_9.svg',
            width: _size4,
          ),
        ),
        Positioned(
          left: _tween2.evaluate(AlwaysStoppedAnimation(_correctFactor)),
          bottom: 300,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_1.svg',
            width: _size4,
          ),
        ),
        Positioned(
          right: _tween4.evaluate(AlwaysStoppedAnimation(_correctFactor)).right,
          top: _tween4.evaluate(AlwaysStoppedAnimation(_correctFactor)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_2.svg',
            width: _size3,
          ),
        ),
        Positioned(
          right: _tween5.evaluate(AlwaysStoppedAnimation(_correctFactor)).right,
          bottom:
              _tween5.evaluate(AlwaysStoppedAnimation(_correctFactor)).bottom,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_3.svg',
            width: _size1,
          ),
        ),
        Positioned(
          right: _tween6.evaluate(AlwaysStoppedAnimation(_correctFactor)).right,
          top: _tween6.evaluate(AlwaysStoppedAnimation(_correctFactor)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_4.svg',
            width: _size5,
          ),
        ),
        Positioned(
          left: _tween1.evaluate(AlwaysStoppedAnimation(_correctFactor)).left,
          top: _tween1.evaluate(AlwaysStoppedAnimation(_correctFactor)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_5.svg',
            width: _size3,
          ),
        ),
        Positioned(
          left: _tween7.evaluate(AlwaysStoppedAnimation(_correctFactor)).left,
          top: _tween7.evaluate(AlwaysStoppedAnimation(_correctFactor)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_6.svg',
            height: _size3,
          ),
        ),
        Positioned(
          left: _tween8.evaluate(AlwaysStoppedAnimation(_correctFactor)).left,
          top: _tween8.evaluate(AlwaysStoppedAnimation(_correctFactor)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_8.svg',
            width: _size2,
          ),
        ),
      ],
    );
  }
}
