import 'package:flutter/material.dart';

class PageViewIndicatorWidget extends StatelessWidget {
  const PageViewIndicatorWidget({Key? key, required this.currentScreen})
      : super(key: key);

  final int currentScreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            3,
            (index) {
              final bool isActive = currentScreen == index;
              final bool isDarkScreen = currentScreen == 2;
              final double size = isActive ? 12 : 8;
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
                  const SizedBox(width: 12)
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
