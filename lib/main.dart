import 'dart:developer';

import 'package:azkarapp/core/utils/app_routers.dart';
import 'package:azkarapp/core/utils/get_it.dart';
import 'package:azkarapp/core/utils/location_service.dart';
import 'package:azkarapp/core/utils/themes.dart';
import 'package:azkarapp/features/home/data/models/elzekr_model/all_azkar_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'constants.dart';
import 'core/utils/hive_helper.dart';

//import 'features/data/repos/home_repo_impl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


List<AllAzkarModel> favList = [];

void main() async {
  await setupLocator();
  //ElazkarServices().initDb;
  await HiveHelper.init();
  Hive.registerAdapter(AllAzkarModelAdapter());
  Hive.registerAdapter(AzkarModelAdapter());
  await  Hive.openBox<List<AllAzkarModel>>(kFavAzkar);

  await HiveHelper.getTheme ?? await HiveHelper.cacheTheme(value: false);
  bool? isDark = await HiveHelper.getTheme;
  AzkarApp.themeNotifier.value = isDark! ? ThemeMode.dark : ThemeMode.light;
  await locator<LocationServices>().getCurrentLocation();

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
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: lightTheme(context),
            darkTheme: darkTheme(context),
            themeMode: currentMode,
          ),
        );
      },
    );
  }
}
