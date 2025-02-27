import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:windsurf_test/core/services/preferences_service.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  return ThemeNotifier();
});

class ThemeNotifier extends StateNotifier<ThemeMode> {
  ThemeNotifier() : super(ThemeMode.system) {
    _loadSavedTheme();
  }

  Future<void> _loadSavedTheme() async {
    final savedTheme = await PreferencesService.loadThemeMode();
    state = savedTheme;
  }

  void setThemeMode(ThemeMode mode) {
    state = mode;
    PreferencesService.saveThemeMode(mode);
  }
}
