import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlanetAnimatedItems extends StatelessWidget {
  static const double _size1 = 30;
  static const double _size2 = 50;
  static const double _size3 = 80;

  PlanetAnimatedItems({super.key, required this.factor});

  final _tween1 = TweenSequence<EdgeInsets>([
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: 0, top: -_size3),
        end: const EdgeInsets.only(left: 0, top: -_size3),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: 0, top: -_size3),
        end: const EdgeInsets.only(left: 0, top: -_size3),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: 0, top: -_size3),
        end: const EdgeInsets.only(left: 0, top: _size3),
      ),
      weight: 1,
    ),
  ]);

  final _tween2 = TweenSequence<EdgeInsets>([
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: 30, top: -_size3),
        end: const EdgeInsets.only(left: 30, top: -_size3),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: 30, top: -_size3),
        end: const EdgeInsets.only(left: 30, top: -_size3),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: -_size3, top: 350),
        end: const EdgeInsets.only(left: 30, top: 250),
      ),
      weight: 1,
    ),
  ]);

  final _tween3 = TweenSequence<EdgeInsets>([
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: -_size3, top: 250),
        end: const EdgeInsets.only(left: -_size3, top: 250),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: -_size3, top: 250),
        end: const EdgeInsets.only(left: -_size3, top: 250),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: -_size3, top: 250),
        end: const EdgeInsets.only(left: 30, top: 400),
      ),
      weight: 1,
    ),
  ]);

  final _tween4 = TweenSequence<EdgeInsets>([
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: -_size3, bottom: 250),
        end: const EdgeInsets.only(right: -_size3, bottom: 250),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: -_size3, bottom: 250),
        end: const EdgeInsets.only(right: -_size3, bottom: 250),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: -_size3, bottom: 275),
        end: const EdgeInsets.only(right: 30, bottom: 350),
      ),
      weight: 1,
    ),
  ]);

  final _tween5 = TweenSequence<EdgeInsets>([
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: -_size2, top: 275),
        end: const EdgeInsets.only(right: -_size2, top: 275),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: -_size2, top: 275),
        end: const EdgeInsets.only(right: -_size2, top: 275),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: -_size2, top: 275),
        end: const EdgeInsets.only(right: 125, top: 110),
      ),
      weight: 1,
    ),
  ]);

  final _tween6 = TweenSequence<EdgeInsets>([
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: 0, top: -_size3),
        end: const EdgeInsets.only(right: 0, top: -_size3),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: 0, top: -_size3),
        end: const EdgeInsets.only(right: 0, top: -_size3),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: 0, top: -_size3),
        end: const EdgeInsets.only(right: 0, top: 130),
      ),
      weight: 1,
    ),
  ]);

  final _tween7 = TweenSequence<EdgeInsets>([
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: -_size1, bottom: 400),
        end: const EdgeInsets.only(right: -_size1, bottom: 400),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: -_size1, bottom: 400),
        end: const EdgeInsets.only(right: -_size1, bottom: 400),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: -_size1, bottom: 400),
        end: const EdgeInsets.only(right: 40, bottom: 475),
      ),
      weight: 1,
    ),
  ]);

  final double factor;

  double get _correctFactor => factor * 3 / 2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: _tween1.evaluate(AlwaysStoppedAnimation(_correctFactor)).top,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_1.svg',
            height: _size3,
          ),
        ),
        Positioned(
          left: _tween2.evaluate(AlwaysStoppedAnimation(_correctFactor)).left,
          top: _tween2.evaluate(AlwaysStoppedAnimation(_correctFactor)).top,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_2.svg',
            height: _size3,
          ),
        ),
        Positioned(
          left: _tween3.evaluate(AlwaysStoppedAnimation(_correctFactor)).left,
          top: _tween3.evaluate(AlwaysStoppedAnimation(_correctFactor)).top,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_3.svg',
            height: _size3,
          ),
        ),
        Positioned(
          right: _tween4.evaluate(AlwaysStoppedAnimation(_correctFactor)).right,
          bottom:
              _tween4.evaluate(AlwaysStoppedAnimation(_correctFactor)).bottom,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_4.svg',
            height: _size3,
          ),
        ),
        Positioned(
          right: _tween5.evaluate(AlwaysStoppedAnimation(_correctFactor)).right,
          top: _tween5.evaluate(AlwaysStoppedAnimation(_correctFactor)).top,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_5.svg',
            width: _size2,
          ),
        ),
        Positioned(
          right: _tween6.evaluate(AlwaysStoppedAnimation(_correctFactor)).right,
          top: _tween6.evaluate(AlwaysStoppedAnimation(_correctFactor)).top,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_6.svg',
            height: _size3,
          ),
        ),
        Positioned(
          right: _tween7.evaluate(AlwaysStoppedAnimation(_correctFactor)).right,
          bottom:
              _tween7.evaluate(AlwaysStoppedAnimation(_correctFactor)).bottom,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_7.svg',
            height: _size1,
          ),
        ),
      ],
    );
  }
}
