import 'package:azkarapp/core/utils/themes.dart';
import 'package:flutter/material.dart';
import 'core/utils/hive_helper.dart';
import 'features/home/presentation/views/home_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await HiveHelper.init();
  await HiveHelper.getTheme ?? await HiveHelper.cacheTheme(value: false);
  bool? isDark = await HiveHelper.getTheme;
  runApp(const AzkarApp());
}

class AzkarApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
  ValueNotifier(ThemeMode.system);

  const AzkarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (__, ThemeMode currentMode, ___) {
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme(context),

            darkTheme: darkTheme(context),
            themeMode: currentMode,
            home: const HomeView(),
          ),
        );
      },

    );
  }
}
