import 'package:flutter/material.dart';

class PageViewIndicatorWidget extends StatelessWidget {
  const PageViewIndicatorWidget({
    Key? key,
    required this.totalScreens,
    required this.isDarkScreen,
    required this.currentScreen,
  }) : super(key: key);

  final int totalScreens;
  final int currentScreen;
  final bool isDarkScreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            totalScreens,
            (index) {
              final bool isActive = currentScreen == index;
              final double size = isActive ? 12 : 8;
              final bool isLast = index == totalScreens - 1;
              final Color color = isDarkScreen ? Colors.white : Colors.black;

              return Row(
                children: [
                  ClipOval(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      color: color,
                      width: size,
                      height: size,
                    ),
                  ),
                  if (!isLast) const SizedBox(width: 12)
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
