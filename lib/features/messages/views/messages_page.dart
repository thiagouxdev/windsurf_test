import 'package:flutter/material.dart';
import 'package:windsurf_test/core/constants/app_strings.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppStrings.getMessagesEmpty(context)),
      ),
    );
  }
}
