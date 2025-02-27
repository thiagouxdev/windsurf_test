import 'package:flutter/material.dart';
import 'package:windsurf_test/core/constants/app_strings.dart';
import 'package:windsurf_test/core/routes/app_routes.dart';
import 'package:windsurf_test/features/home/views/home_page.dart';
import 'package:windsurf_test/features/favorites/views/favorites_page.dart';
import 'package:windsurf_test/features/messages/views/messages_page.dart';
import 'package:windsurf_test/features/settings/views/settings_page.dart';

class RootNavigation extends StatefulWidget {
  const RootNavigation({super.key});

  @override
  State<RootNavigation> createState() => _RootNavigationState();
}

class _RootNavigationState extends State<RootNavigation> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = [
    const MyHomePage(),
    const MessagesPage(),
    const FavoritesPage(),
    const SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _openNotifications() {
    AppRoutes.navigateToNotifications(context);
  }

  @override
  Widget build(BuildContext context) {
    // Get translated titles
    final List<String> _titles = [
      AppStrings.getHome(context),
      AppStrings.getMessages(context),
      AppStrings.getFavorites(context),
      AppStrings.getSettings(context),
    ];
    
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: Icon(Icons.person),
          ),
        ),
        title: Text(_titles[_selectedIndex]),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: _openNotifications,
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home_outlined),
            selectedIcon: const Icon(Icons.home),
            label: _titles[0],
          ),
          NavigationDestination(
            icon: const Icon(Icons.message_outlined),
            selectedIcon: const Icon(Icons.message),
            label: _titles[1],
          ),
          NavigationDestination(
            icon: const Icon(Icons.favorite_outline),
            selectedIcon: const Icon(Icons.favorite),
            label: _titles[2],
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings_outlined),
            selectedIcon: const Icon(Icons.settings),
            label: _titles[3],
          ),
        ],
      ),
    );
  }
}
