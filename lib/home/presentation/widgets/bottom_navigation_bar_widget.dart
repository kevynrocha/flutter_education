import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../theme/theme.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  static const double _bottomNavigationBarHeight = 90;
  static const double _bottomNavigationBarRadius = 25;

  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _bottomNavigationBarHeight,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(_bottomNavigationBarRadius),
          topRight: Radius.circular(_bottomNavigationBarRadius),
        ),
      ),
      child: BottomNavigationBar(
        selectedItemColor: FlutterEducationTheme.primaryColor,
        unselectedItemColor: FlutterEducationTheme.secondaryColor,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: 'My books',
            icon: SvgPicture.asset(
              'assets/images/book.svg',
              semanticsLabel: 'Book Icon',
            ),
          ),
          BottomNavigationBarItem(
            label: 'Discover',
            icon: SvgPicture.asset(
              'assets/images/discover.svg',
              semanticsLabel: 'Planet Icon',
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: SvgPicture.asset(
              'assets/images/profile.svg',
              semanticsLabel: 'Profile Icon',
            ),
          ),
        ],
      ),
    );
  }
}
