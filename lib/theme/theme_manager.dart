import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  final darkTheme = ThemeData(
      primaryColor: const Color(0xFF151515),
      secondaryHeaderColor: const Color(0xFF242424),
      focusColor: const Color(0xFF242424),
      scaffoldBackgroundColor: const Color(0xFF151515),
      brightness: Brightness.dark,
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
          fontSize: 15.0,
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 15.0,
          color: Color(0xFF878787),
        ),
      ));

  final lightTheme = ThemeData(
      scaffoldBackgroundColor: const Color(0xFF151515),
      primaryColor: const Color(0xFF151515),
      secondaryHeaderColor: const Color(0xFF242424),
      focusColor: const Color(0xFF242424),
      brightness: Brightness.light,
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
        ),
        bodySmall: TextStyle(
          fontSize: 15.0,
          color: Color(0xFF878787),
        ),
      ));

  ThemeData _themeData = ThemeData(
    primaryColor: const Color(0xFF151515),
    focusColor: const Color(0xFF242424),
    brightness: Brightness.dark,
  );
  ThemeData getTheme() => _themeData;

  ThemeNotifier() {
    _themeData = darkTheme;
    notifyListeners();
  }

  void setDarkMode() async {
    _themeData = darkTheme;
    notifyListeners();
  }

  void setLightMode() async {
    _themeData = lightTheme;
    notifyListeners();
  }
}
