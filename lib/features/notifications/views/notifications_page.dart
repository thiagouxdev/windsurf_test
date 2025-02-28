import 'package:flutter/material.dart';
import 'package:windsurf_test/core/utils/constants/app_strings.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            title: Text(AppStrings.getNotifications(context)),
          ),
          SliverList.list(
            children: List.generate(
              20,
              (index) => ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.notifications),
                ),
                title: Text('Notificação ${index + 1}'),
                subtitle: const Text('Detalhes da notificação'),
                trailing: const Text('2h'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
