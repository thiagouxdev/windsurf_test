import 'package:flutter/material.dart';
import 'package:windsurf_test/core/utils/constants/app_strings.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppStrings.getFavoritesEmpty(context)),
      ),
    );
  }
}
