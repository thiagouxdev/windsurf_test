import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:windsurf_test/core/providers/language_provider.dart';

class PreferencesService {
  static const String _themeKey = 'theme_mode';
  static const String _languageKey = 'language';

  // Save theme mode
  static Future<void> saveThemeMode(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_themeKey, themeMode.index);
  }

  // Load theme mode
  static Future<ThemeMode> loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final themeIndex = prefs.getInt(_themeKey);
    
    if (themeIndex == null) {
      return ThemeMode.system; // Default value
    }
    
    return ThemeMode.values[themeIndex];
  }

  // Save language
  static Future<void> saveLanguage(AppLanguage language) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_languageKey, language.index);
  }

  // Load language
  static Future<AppLanguage> loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final languageIndex = prefs.getInt(_languageKey);
    
    if (languageIndex == null) {
      return AppLanguage.portuguese; // Default value
    }
    
    return AppLanguage.values[languageIndex];
  }
}
