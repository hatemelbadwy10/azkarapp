import 'package:azkarapp/core/utils/city_service.dart';
import 'package:azkarapp/core/utils/location_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future setupLocator() async {
  locator.registerLazySingleton(() => LocationServices());
  init();
  locator.registerLazySingleton(() => CityService());
}

void init() {
  locator<LocationServices>();
}
