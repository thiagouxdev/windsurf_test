import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppLanguage {
  portuguese,
  english,
  spanish,
  chinese,
}

extension AppLanguageExtension on AppLanguage {
  String get name {
    switch (this) {
      case AppLanguage.portuguese:
        return 'Português';
      case AppLanguage.english:
        return 'English';
      case AppLanguage.spanish:
        return 'Español';
      case AppLanguage.chinese:
        return '中文';
    }
  }

  Locale get locale {
    switch (this) {
      case AppLanguage.portuguese:
        return const Locale('pt', 'BR');
      case AppLanguage.english:
        return const Locale('en', 'US');
      case AppLanguage.spanish:
        return const Locale('es', 'ES');
      case AppLanguage.chinese:
        return const Locale('zh', 'CN');
    }
  }

  IconData get icon {
    switch (this) {
      case AppLanguage.portuguese:
        return Icons.flag_outlined;
      case AppLanguage.english:
        return Icons.flag_outlined;
      case AppLanguage.spanish:
        return Icons.flag_outlined;
      case AppLanguage.chinese:
        return Icons.flag_outlined;
    }
  }
}

final languageProvider = StateNotifierProvider<LanguageNotifier, AppLanguage>((ref) {
  return LanguageNotifier();
});

class LanguageNotifier extends StateNotifier<AppLanguage> {
  LanguageNotifier() : super(AppLanguage.portuguese);

  void setLanguage(AppLanguage language) => state = language;
}
