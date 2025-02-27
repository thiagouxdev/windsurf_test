import 'package:flutter/material.dart';
import 'package:windsurf_test/core/translations/app_translations.dart';

class AppStrings {
  // App Name
  static const String appName = 'Windsurf App';
  static String getAppName(BuildContext context) => AppTranslations.translate(context, 'appName');

  // Navigation Titles
  static const String home = 'Home';
  static String getHome(BuildContext context) => AppTranslations.translate(context, 'home');
  
  static const String messages = 'Mensagens';
  static String getMessages(BuildContext context) => AppTranslations.translate(context, 'messages');
  
  static const String favorites = 'Favoritos';
  static String getFavorites(BuildContext context) => AppTranslations.translate(context, 'favorites');
  
  static const String settings = 'Configurações';
  static String getSettings(BuildContext context) => AppTranslations.translate(context, 'settings');
  
  static const String notifications = 'Notificações';
  static String getNotifications(BuildContext context) => AppTranslations.translate(context, 'notifications');

  // Welcome Page
  static const String welcomeTitle = 'Bem-vindo ao App';
  static String getWelcomeTitle(BuildContext context) => AppTranslations.translate(context, 'welcomeTitle');
  
  static const String welcomeDescription = 'Explore todas as funcionalidades \ndo nosso aplicativo';
  static String getWelcomeDescription(BuildContext context) => AppTranslations.translate(context, 'welcomeDescription');
  
  static const String startButton = 'Começar';
  static String getStartButton(BuildContext context) => AppTranslations.translate(context, 'startButton');

  // Home Page
  static const String counterText = 'You have pushed the button this many times:';
  static String getCounterText(BuildContext context) => AppTranslations.translate(context, 'counterText');
  
  static const String incrementTooltip = 'Increment';
  static String getIncrementTooltip(BuildContext context) => AppTranslations.translate(context, 'incrementTooltip');

  // Messages Page
  static const String messagesEmpty = 'Mensagens';
  static String getMessagesEmpty(BuildContext context) => AppTranslations.translate(context, 'messagesEmpty');

  // Favorites Page
  static const String favoritesEmpty = 'Página de Favoritos';
  static String getFavoritesEmpty(BuildContext context) => AppTranslations.translate(context, 'favoritesEmpty');

  // Settings Page
  static const String settingsEmpty = 'Configurações';
  static String getSettingsEmpty(BuildContext context) => AppTranslations.translate(context, 'settingsEmpty');
  
  static const String settingsProfile = 'Perfil';
  static String getSettingsProfile(BuildContext context) => AppTranslations.translate(context, 'settingsProfile');
  
  static const String settingsMyData = 'Meus dados';
  static String getSettingsMyData(BuildContext context) => AppTranslations.translate(context, 'settingsMyData');
  
  static const String settingsPreferences = 'Preferências';
  static String getSettingsPreferences(BuildContext context) => AppTranslations.translate(context, 'settingsPreferences');
  
  static const String settingsTheme = 'Tema';
  static String getSettingsTheme(BuildContext context) => AppTranslations.translate(context, 'settingsTheme');
  
  static const String settingsLanguage = 'Idioma';
  static String getSettingsLanguage(BuildContext context) => AppTranslations.translate(context, 'settingsLanguage');
  
  static const String seeMore = 'Ver mais';
  static String getSeeMore(BuildContext context) => AppTranslations.translate(context, 'seeMore');

  // Theme Page
  static const String themeSystem = 'Tema do Sistema';
  static String getThemeSystem(BuildContext context) => AppTranslations.translate(context, 'themeSystem');
  
  static const String themeLight = 'Tema Claro';
  static String getThemeLight(BuildContext context) => AppTranslations.translate(context, 'themeLight');
  
  static const String themeDark = 'Tema Escuro';
  static String getThemeDark(BuildContext context) => AppTranslations.translate(context, 'themeDark');
  
  // Language Page
  static const String languagePortuguese = 'Português';
  static String getLanguagePortuguese(BuildContext context) => AppTranslations.translate(context, 'languagePortuguese');
  
  static const String languageEnglish = 'English';
  static String getLanguageEnglish(BuildContext context) => AppTranslations.translate(context, 'languageEnglish');
  
  static const String languageSpanish = 'Español';
  static String getLanguageSpanish(BuildContext context) => AppTranslations.translate(context, 'languageSpanish');
  
  static const String languageChinese = '中文';
  static String getLanguageChinese(BuildContext context) => AppTranslations.translate(context, 'languageChinese');
  
  static const String searchLanguage = 'Pesquisar idioma';
  static String getSearchLanguage(BuildContext context) => AppTranslations.translate(context, 'searchLanguage');

  // Drawer
  static const String logout = 'Sair';
  static String getLogout(BuildContext context) => AppTranslations.translate(context, 'logout');
}
