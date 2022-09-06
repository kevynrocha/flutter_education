import 'package:flutter/material.dart';

import '../animations/animations.dart';

class AnimatedItemsWidget extends StatelessWidget {
  const AnimatedItemsWidget({super.key, required this.factor});

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
