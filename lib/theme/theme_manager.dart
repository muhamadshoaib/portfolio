import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  final darkTheme = ThemeData(
    primaryColor: const Color(0xFF151515),
    focusColor: const Color(0xFF242424),
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF1e1e28),
  );

  final lightTheme = ThemeData(
    primaryColor: const Color(0xFF151515),
    focusColor: const Color(0xFF242424),
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF1e1e28),
  );

  ThemeData _themeData = ThemeData(
    primaryColor: const Color(0xFF151515),
    focusColor: const Color(0xFF242424),
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF1e1e28),
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
