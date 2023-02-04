import 'package:get_it/get_it.dart';
import 'package:handyman_provider/src/dashboard/dashboard_viewmodel.dart';
import 'package:handyman_provider/src/login/login_repository.dart';
import 'package:handyman_provider/src/login/login_repository_impl.dart';
import 'package:handyman_provider/src/login/login_view_model.dart';
import 'package:handyman_provider/src/signup/signup_view_model.dart';

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
    locator.registerFactory<LoginRepository>(
      () => LoginRepositoryImpl(locator()),
    );
  }

  _setUpViewModels() {
    locator.registerLazySingleton<SplashViewModel>(
      () => SplashViewModel(locator()),
    );
    locator.registerLazySingleton<LoginViewModel>(
      () => LoginViewModel(locator(), locator()),
    );
    locator.registerLazySingleton<SignupViewModel>(
      () => SignupViewModel(locator()),
    );
    locator.registerLazySingleton<DashboardViewModel>(
      () => DashboardViewModel(locator()),
    );
  }
}
