import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(horizontal: 52, vertical: 12),
        ),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          FlutterEducationTheme.primaryColor,
        ),
        backgroundColor: const MaterialStatePropertyAll<Color>(
          Color(0xFFFF8383),
        ),
        textStyle: const MaterialStatePropertyAll<TextStyle>(
          TextStyle(fontFamily: 'Metropolis'),
        ),
      ),
      child: const Text('START'),
    );
  }
}
