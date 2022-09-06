import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VegetableAnimatedItems extends StatelessWidget {
  static const double _size1 = 50;
  static const double _size2 = 75;
  static const double _size3 = 85;
  static const double _size4 = 100;

  VegetableAnimatedItems({super.key, required this.factor});

  final double factor;

  final _tween1 = TweenSequence<EdgeInsets>([
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: -_size1, top: 450),
        end: const EdgeInsets.only(left: 0, top: 400),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: 0, top: 400),
        end: const EdgeInsets.only(left: 0, top: 400),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: 0, top: 400),
        end: const EdgeInsets.only(left: -_size1, top: 450),
      ),
      weight: 1,
    ),
  ]);

  final _tween2 = TweenSequence<EdgeInsets>([
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: -_size4, top: 400),
        end: const EdgeInsets.only(left: 30, top: 250),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: 30, top: 255),
        end: const EdgeInsets.only(left: 30, top: 255),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: 30, top: 255),
        end: const EdgeInsets.only(left: 60, top: -_size4),
      ),
      weight: 1,
    ),
  ]);

  final _tween3 = TweenSequence<EdgeInsets>([
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: -_size4, top: -_size4),
        end: const EdgeInsets.only(left: 60, top: 100),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: 60, top: 100),
        end: const EdgeInsets.only(left: 60, top: 100),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(left: 60, top: 100),
        end: const EdgeInsets.only(left: -_size4, top: 100),
      ),
      weight: 1,
    ),
  ]);

  final _tween4 = TweenSequence<EdgeInsets>([
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: -_size4, bottom: 300),
        end: const EdgeInsets.only(right: 30, bottom: 350),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: 30, bottom: 350),
        end: const EdgeInsets.only(right: 30, bottom: 350),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: 30, bottom: 350),
        end: const EdgeInsets.only(right: -_size4, bottom: 600),
      ),
      weight: 1,
    ),
  ]);

  final _tween5 = TweenSequence<EdgeInsets>([
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: -_size3, bottom: 600),
        end: const EdgeInsets.only(right: 0, bottom: 450),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: 0, bottom: 450),
        end: const EdgeInsets.only(right: 0, bottom: 450),
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: EdgeInsetsTween(
        begin: const EdgeInsets.only(right: 0, bottom: 450),
        end: const EdgeInsets.only(right: -_size3, bottom: 300),
      ),
      weight: 1,
    ),
  ]);

  double get _correctFactor => factor * 3 / 2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: _tween1.evaluate(AlwaysStoppedAnimation(_correctFactor)).left,
          top: _tween1.evaluate(AlwaysStoppedAnimation(_correctFactor)).top,
          child: SvgPicture.asset(
            'assets/images/vegetable/animated_vegetable_1.svg',
            width: _size1,
          ),
        ),
        Positioned(
          left: _tween2.evaluate(AlwaysStoppedAnimation(_correctFactor)).left,
          top: _tween2.evaluate(AlwaysStoppedAnimation(_correctFactor)).top,
          child: SvgPicture.asset(
            'assets/images/vegetable/animated_vegetable_2.svg',
            width: _size4,
          ),
        ),
        Positioned(
          left: _tween3.evaluate(AlwaysStoppedAnimation(_correctFactor)).left,
          top: _tween3.evaluate(AlwaysStoppedAnimation(_correctFactor)).top,
          child: SvgPicture.asset(
            'assets/images/vegetable/animated_vegetable_3.svg',
            width: _size4,
          ),
        ),
        Positioned(
          right: _tween4.evaluate(AlwaysStoppedAnimation(_correctFactor)).right,
          bottom:
              _tween4.evaluate(AlwaysStoppedAnimation(_correctFactor)).bottom,
          child: SvgPicture.asset(
            'assets/images/vegetable/animated_vegetable_4.svg',
            width: _size2,
          ),
        ),
        Positioned(
          right: _tween5.evaluate(AlwaysStoppedAnimation(_correctFactor)).right,
          bottom:
              _tween5.evaluate(AlwaysStoppedAnimation(_correctFactor)).bottom,
          child: SvgPicture.asset(
            'assets/images/vegetable/animated_vegetable_5.svg',
            width: _size3,
          ),
        ),
      ],
    );
  }
}
