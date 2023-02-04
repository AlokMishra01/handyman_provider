import 'package:get_it/get_it.dart';

import '/core/api/dio_client/dio_client.dart';
import '/core/logger/logger.dart';
import '/core/preference/preference.dart';
import '/src/splash/splash_view_model.dart';

class AppLocator {
  static GetIt locator = GetIt.instance;

  AppLocator() {
    _setUpLogger();
    _setUpPreference();
    _setUpAPIClient();
    _setUpViewModels();
    _setUpRepositories();
  }

  _setUpLogger() {
    locator.registerLazySingleton<Logger>(() => Logger());
  }

  _setUpPreference() async {
    locator.registerLazySingleton<Preference>(() => Preference());
  }

  _setUpAPIClient() {
    locator.registerLazySingleton<DioClient>(() => DioClient());
  }

  _setUpRepositories() {
    // locator.registerFactory<DataRepository>(() => DataRepositoryImpl());
  }

  _setUpViewModels() {
    locator.registerLazySingleton<SplashViewModel>(
      () => SplashViewModel(locator()),
    );
  }
}
