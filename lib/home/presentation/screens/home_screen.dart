import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      backgroundColor: const Color(0xFFFFF4F3),
      bottomNavigationBar: Container(
        height: 90,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
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
      ),
    );
  }
}
