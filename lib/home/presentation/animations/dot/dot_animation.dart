import 'package:flutter/material.dart';
import 'package:flutter_education/theme/theme.dart';

class DotsAnimated extends StatelessWidget {
  const DotsAnimated({super.key, required this.factor});

  final double factor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(left: 50, bottom: 120),
        ),
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(left: 20, bottom: 200),
        ),
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(left: 30, bottom: 280),
        ),
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(left: 130, bottom: 310),
        ),
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(right: 30, bottom: 150),
        ),
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(right: 20, bottom: 280),
        ),
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(right: 10, bottom: 400),
        ),
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(left: 50, bottom: 450),
        ),
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(left: 30, top: 200),
        ),
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(left: 30, top: 50),
        ),
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(left: 80, top: 30),
        ),
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(right: 10, top: 35),
        ),
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(right: 30, top: 120),
        ),
        _Dot(
          factor: factor,
          edgeInsets: const EdgeInsets.only(right: 130, top: 100),
        ),
      ],
    );
  }
}

class _Dot extends StatelessWidget {
  static const double _size = 4;

  _Dot({required this.factor, required this.edgeInsets});

  final double factor;
  final EdgeInsets edgeInsets;

  final _tween = TweenSequence<Color?>([
    TweenSequenceItem(
      tween: ColorTween(
        begin: Colors.transparent,
        end: Colors.transparent,
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: ColorTween(
        begin: FlutterEducationTheme.dotPrimaryBackgroundColor,
        end: FlutterEducationTheme.dotPrimaryBackgroundColor,
      ),
      weight: 1,
    ),
    TweenSequenceItem(
      tween: ColorTween(
        begin: FlutterEducationTheme.dotPrimaryBackgroundColor,
        end: FlutterEducationTheme.dotSecondaryBackgroundColor,
      ),
      weight: 1,
    ),
  ]);

  double get _correctFactor => factor * 3 / 2;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: edgeInsets.top != 0.0 ? edgeInsets.top : null,
      left: edgeInsets.left != 0.0 ? edgeInsets.left : null,
      right: edgeInsets.right != 0.0 ? edgeInsets.right : null,
      bottom: edgeInsets.bottom != 0.0 ? edgeInsets.bottom : null,
      child: Container(
        decoration: BoxDecoration(
          color: _tween.evaluate(AlwaysStoppedAnimation(_correctFactor)),
          borderRadius: const BorderRadius.all(Radius.elliptical(200, 300)),
        ),
        width: _size,
        height: _size,
      ),
    );
  }
}
