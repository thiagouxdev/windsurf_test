import 'package:basic_app/core/utils/constants/app_image_strings.dart';
import 'package:flutter/material.dart';
import 'package:basic_app/core/utils/constants/app_strings.dart';
import 'package:basic_app/core/routes/app_routes.dart';
import 'package:basic_app/features/settings/views/language_page.dart';
import 'package:basic_app/features/settings/views/theme_page.dart';
import 'package:flutter_svg/svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert),
              onSelected: (value) {
                if (value == 'language') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LanguagePage()),
                  );
                } else if (value == 'theme') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThemePage()),
                  );
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'language',
                  child: Row(
                    children: [
                      const Icon(Icons.language, size: 20),
                      const SizedBox(width: 8),
                      Text(AppStrings.getSettingsLanguage(context)),
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'theme',
                  child: Row(
                    children: [
                      const Icon(Icons.palette_outlined, size: 20),
                      const SizedBox(width: 8),
                      Text(AppStrings.getSettingsTheme(context)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImages.appLogoDark, height: 120),
                const SizedBox(height: 24),
                Text(
                  AppStrings.getWelcomeTitle(context),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  AppStrings.getWelcomeDescription(context),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 48),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 412),
                  child: SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: FilledButton.tonalIcon(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, AppRoutes.home);
                      },
                      icon: const Icon(Icons.arrow_forward),
                      label: Text(AppStrings.getStartButton(context)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
