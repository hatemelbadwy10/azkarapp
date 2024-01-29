import 'package:azkarapp/features/home/presentation/views/widgets/change_theme_icon.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/fav_azkar_container.dart';
import 'package:flutter/material.dart';
class AzkarViewAppBar extends StatelessWidget {
  const AzkarViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Row(
        children: [
          ChangeThemeIcon(),
          FavAzkarContainer()

        ],
      ),
    );
  }
}
