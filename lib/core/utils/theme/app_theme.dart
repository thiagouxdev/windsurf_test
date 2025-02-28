import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData _baseTheme(Brightness brightness) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.orange,
        brightness: brightness,
      ),
      dividerTheme: const DividerThemeData(
        space: 1,
        thickness: 0.5,
      ),
    );
  }

  static ThemeData get lightTheme => _baseTheme(Brightness.light);
  static ThemeData get darkTheme => _baseTheme(Brightness.dark);
}
