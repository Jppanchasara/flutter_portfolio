import 'package:flutter/material.dart';
import 'package:portfolio/themechnage/theme_preferences.dart';


class ModelTheme extends ChangeNotifier {
   static bool _isDark=false;
   MyThemePreferences _preferences=MyThemePreferences();
  bool get isDark => _isDark;

  ThemeModel() {
    _isDark = false;
    _preferences = MyThemePreferences();
    getPreferences();
  }
//Switching the themes
  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme( );
    notifyListeners();
  }
}