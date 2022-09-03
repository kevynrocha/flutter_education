import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_widget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(const MyApp());
}
