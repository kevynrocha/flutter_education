import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyContentWidget extends StatelessWidget {
  static const double _imageWidth = 200;
  static const double _offsetBottom = 200;

  const BodyContentWidget({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: _offsetBottom),
        child: SvgPicture.asset(imagePath, width: _imageWidth),
      ),
    );
  }
}
