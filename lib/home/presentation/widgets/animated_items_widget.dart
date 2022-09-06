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
  static const double _size1 = 50;
  static const double _size2 = 60;
  static const double _size3 = 70;
  static const double _size4 = 100;
  static const double _size5 = 150;
  static const double _size6 = 250;

  _PlantAnimatedItems({required this.factor});

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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: _tween3.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)),
          bottom: 200,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_7.svg',
            width: _size6,
          ),
        ),
        Positioned(
          right: _tween9.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)),
          top: 50,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_9.svg',
            width: _size4,
          ),
        ),
        Positioned(
          left: _tween2.evaluate(AlwaysStoppedAnimation(factor * 3)),
          bottom: 300,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_1.svg',
            width: _size4,
          ),
        ),
        Positioned(
          right: _tween4.evaluate(AlwaysStoppedAnimation(factor * 3)).right,
          top: _tween4.evaluate(AlwaysStoppedAnimation(factor * 3)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_2.svg',
            width: _size3,
          ),
        ),
        Positioned(
          right: _tween5.evaluate(AlwaysStoppedAnimation(factor * 3)).right,
          bottom: _tween5.evaluate(AlwaysStoppedAnimation(factor * 3)).bottom,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_3.svg',
            width: _size1,
          ),
        ),
        Positioned(
          right: _tween6.evaluate(AlwaysStoppedAnimation(factor * 3)).right,
          top: _tween6.evaluate(AlwaysStoppedAnimation(factor * 3)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_4.svg',
            width: _size5,
          ),
        ),
        Positioned(
          left: _tween1.evaluate(AlwaysStoppedAnimation(factor * 3)).left,
          top: _tween1.evaluate(AlwaysStoppedAnimation(factor * 3)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_5.svg',
            width: _size3,
          ),
        ),
        Positioned(
          left: _tween7.evaluate(AlwaysStoppedAnimation(factor * 3)).left,
          top: _tween7.evaluate(AlwaysStoppedAnimation(factor * 3)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_6.svg',
            height: _size3,
          ),
        ),
        Positioned(
          left: _tween8.evaluate(AlwaysStoppedAnimation(factor * 3)).left,
          top: _tween8.evaluate(AlwaysStoppedAnimation(factor * 3)).top,
          child: SvgPicture.asset(
            'assets/images/plant/animated_plant_8.svg',
            width: _size2,
          ),
        ),
      ],
    );
  }
}

class _VegetableAnimatedItems extends StatelessWidget {
  static const double _size1 = 50;
  static const double _size2 = 75;
  static const double _size3 = 85;
  static const double _size4 = 100;

  _VegetableAnimatedItems({required this.factor});

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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: _tween1.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).left,
          top: _tween1.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).top,
          child: SvgPicture.asset(
            'assets/images/vegetable/animated_vegetable_1.svg',
            width: _size1,
          ),
        ),
        Positioned(
          left: _tween2.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).left,
          top: _tween2.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).top,
          child: SvgPicture.asset(
            'assets/images/vegetable/animated_vegetable_2.svg',
            width: _size4,
          ),
        ),
        Positioned(
          left: _tween3.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).left,
          top: _tween3.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).top,
          child: SvgPicture.asset(
            'assets/images/vegetable/animated_vegetable_3.svg',
            width: _size4,
          ),
        ),
        Positioned(
          right: _tween4.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).right,
          bottom:
              _tween4.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).bottom,
          child: SvgPicture.asset(
            'assets/images/vegetable/animated_vegetable_4.svg',
            width: _size2,
          ),
        ),
        Positioned(
          right: _tween5.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).right,
          bottom:
              _tween5.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).bottom,
          child: SvgPicture.asset(
            'assets/images/vegetable/animated_vegetable_5.svg',
            width: _size3,
          ),
        ),
      ],
    );
  }
}

class _PlanetAnimatedItems extends StatelessWidget {
  static const double _size1 = 30;
  static const double _size2 = 50;
  static const double _size3 = 80;

  _PlanetAnimatedItems({required this.factor});

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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: _tween1.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).top,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_1.svg',
            height: _size3,
          ),
        ),
        Positioned(
          left: _tween2.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).left,
          top: _tween2.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).top,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_2.svg',
            height: _size3,
          ),
        ),
        Positioned(
          left: _tween3.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).left,
          top: _tween3.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).top,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_3.svg',
            height: _size3,
          ),
        ),
        Positioned(
          right: _tween4.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).right,
          bottom:
              _tween4.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).bottom,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_4.svg',
            height: _size3,
          ),
        ),
        Positioned(
          right: _tween5.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).right,
          top: _tween5.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).top,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_5.svg',
            width: _size2,
          ),
        ),
        Positioned(
          right: _tween6.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).right,
          top: _tween6.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).top,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_6.svg',
            height: _size3,
          ),
        ),
        Positioned(
          right: _tween7.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).right,
          bottom:
              _tween7.evaluate(AlwaysStoppedAnimation(factor * 3 / 2)).bottom,
          child: SvgPicture.asset(
            'assets/images/planet/animated_planet_7.svg',
            height: _size1,
          ),
        ),
      ],
    );
  }
}
