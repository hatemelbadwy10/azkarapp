import 'package:flutter/material.dart';

import '../../main.dart';
import '../utils/hive_helper.dart';

class ChangeThemeIcon extends StatefulWidget {
  const ChangeThemeIcon({super.key});

  @override
  State<ChangeThemeIcon> createState() => _ChangeThemeIconState();
}

class _ChangeThemeIconState extends State<ChangeThemeIcon> {
  void changeIcon() {
    setState(() {
      if (AzkarApp.themeNotifier.value == ThemeMode.light) {
        AzkarApp.themeNotifier.value = ThemeMode.dark;
        HiveHelper.cacheTheme(value: true);
      } else {
        AzkarApp.themeNotifier.value = ThemeMode.light;
        HiveHelper.cacheTheme(value: false);
      }
    });
  }

  Icon changeIconLogic() {
    if (AzkarApp.themeNotifier.value == ThemeMode.light) {
      return const Icon(
        Icons.light_mode_outlined,
        color: Color(0xff7796CB),
      );
    } else {
      return Icon(
        Icons.light_mode,
        color: Theme.of(context).primaryColor,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: changeIconLogic(),
        onPressed: () {
          changeIcon();
        });
  }
}
