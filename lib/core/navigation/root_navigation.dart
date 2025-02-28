import 'package:flutter/material.dart';
import 'package:windsurf_test/core/utils/constants/app_strings.dart';
import 'package:windsurf_test/core/routes/app_routes.dart';
import 'package:windsurf_test/features/home/views/home_page.dart';
import 'package:windsurf_test/features/favorites/views/favorites_page.dart';
import 'package:windsurf_test/features/messages/views/messages_page.dart';
import 'package:windsurf_test/features/settings/views/settings_page.dart';
import 'package:windsurf_test/core/navigation/app_drawer.dart';

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
    final List<String> titles = [
      AppStrings.getHome(context),
      AppStrings.getMessages(context),
      AppStrings.getFavorites(context),
      AppStrings.getSettings(context),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: const CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
          ),
        ),
        title: Text(titles[_selectedIndex]),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: _openNotifications,
          ),
          const SizedBox(width: 8),
        ],
      ),
      drawer: const AppDrawer(),
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
            label: titles[0],
          ),
          NavigationDestination(
            icon: const Icon(Icons.message_outlined),
            selectedIcon: const Icon(Icons.message),
            label: titles[1],
          ),
          NavigationDestination(
            icon: const Icon(Icons.favorite_border),
            selectedIcon: const Icon(Icons.favorite),
            label: titles[2],
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings_outlined),
            selectedIcon: const Icon(Icons.settings),
            label: titles[3],
          ),
        ],
      ),
    );
  }
}
