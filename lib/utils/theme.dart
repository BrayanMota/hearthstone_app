import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme {
  ThemeData themeData() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      fontFamily: 'Belwe',
    );
  }
}
