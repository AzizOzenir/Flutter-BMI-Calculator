import 'package:flutter/material.dart';

class ThemeController with ChangeNotifier {
  bool isDark = false;

  onPressed() {
    isDark = !isDark;
    notifyListeners();
  }
}
