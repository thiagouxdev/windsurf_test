import 'package:flutter/material.dart';
import 'package:basic_app/core/navigation/root_navigation.dart';
import 'package:basic_app/features/notifications/views/notifications_page.dart';
import 'package:basic_app/features/welcome/views/welcome_page.dart';
import 'package:basic_app/features/splash/views/splash_screen.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String welcome = '/welcome';
  static const String home = '/home';
  static const String notifications = '/notifications';

  static Map<String, WidgetBuilder> get routes => {
        splash: (context) => const SplashScreen(),
        welcome: (context) => const WelcomePage(),
        home: (context) => const RootNavigation(),
        notifications: (context) => const NotificationsPage(),
      };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case notifications:
        return MaterialPageRoute(
          builder: (_) => const NotificationsPage(),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => const RootNavigation(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const WelcomePage(),
        );
    }
  }

  static void navigateToNotifications(BuildContext context) {
    Navigator.pushNamed(context, notifications);
  }
}
