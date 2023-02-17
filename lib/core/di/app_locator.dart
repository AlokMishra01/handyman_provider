import 'package:get_it/get_it.dart';
import 'package:handyman_provider/core/repositories/accepted_service_repository.dart';
import 'package:handyman_provider/core/repositories/accepted_service_repository_impl.dart';
import 'package:handyman_provider/core/repositories/balance_repository.dart';
import 'package:handyman_provider/core/repositories/balance_repository_impl.dart';
import 'package:handyman_provider/core/repositories/document_repository.dart';
import 'package:handyman_provider/core/repositories/document_repository_impl.dart';
import 'package:handyman_provider/core/repositories/login_repository.dart';
import 'package:handyman_provider/core/repositories/login_repository_impl.dart';
import 'package:handyman_provider/core/repositories/profile_repository.dart';
import 'package:handyman_provider/core/repositories/profile_repository_impl.dart';
import 'package:handyman_provider/src/accepted_service/accepted_details_viewmodel.dart';
import 'package:handyman_provider/src/accepted_service/accepted_service_viewmodel.dart';
import 'package:handyman_provider/src/assigned_service/assigned_service_viewmodel.dart';
import 'package:handyman_provider/src/dashboard/dashboard_viewmodel.dart';
import 'package:handyman_provider/src/documents/add_document_view_model.dart';
import 'package:handyman_provider/src/documents/documents_viewmodel.dart';
import 'package:handyman_provider/src/login/login_view_model.dart';
import 'package:handyman_provider/src/my_balance/my_balance_viewmodel.dart';
import 'package:handyman_provider/src/my_income/my_income_viewmodel.dart';
import 'package:handyman_provider/src/my_services/add_service_view_model.dart';
import 'package:handyman_provider/src/my_services/my_service_viewmodel.dart';
import 'package:handyman_provider/src/profile/edit_profile_view_model.dart';
import 'package:handyman_provider/src/signup/otp_view_model.dart';
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
    locator.registerFactory<ProfileRepository>(
      () => ProfileRepositoryImpl(locator()),
    );
    locator.registerFactory<AcceptedServiceRepository>(
      () => AcceptedServiceRepositoryImpl(locator()),
    );
    locator.registerFactory<BalanceRepository>(
      () => BalanceRepositoryImpl(locator()),
    );
    locator.registerFactory<DocumentRepository>(
      () => DocumentRepositoryImpl(locator()),
    );
  }

  _setUpViewModels() {
    locator.registerLazySingleton<SplashViewModel>(
      () => SplashViewModel(locator()),
    );
    locator.registerLazySingleton<LoginViewModel>(
      () => LoginViewModel(locator(), locator(), locator()),
    );
    locator.registerLazySingleton<SignupViewModel>(
      () => SignupViewModel(locator(), locator()),
    );
    locator.registerLazySingleton<DashboardViewModel>(
      () => DashboardViewModel(locator(), locator()),
    );
    locator.registerLazySingleton<AcceptedServiceViewModel>(
      () => AcceptedServiceViewModel(locator(), locator()),
    );
    locator.registerLazySingleton<MyBalanceViewModel>(
      () => MyBalanceViewModel(locator(), locator()),
    );
    locator.registerLazySingleton<MyIncomeViewModel>(
      () => MyIncomeViewModel(locator(), locator()),
    );
    locator.registerLazySingleton<MyServiceViewModel>(
      () => MyServiceViewModel(locator(), locator()),
    );
    locator.registerLazySingleton<AddServiceViewModel>(
      () => AddServiceViewModel(locator(), locator()),
    );
    locator.registerLazySingleton<AcceptedDetailsViewModel>(
      () => AcceptedDetailsViewModel(locator(), locator()),
    );
    locator.registerLazySingleton<DocumentsViewModel>(
      () => DocumentsViewModel(locator(), locator()),
    );
    locator.registerLazySingleton<AddDocumentViewModel>(
      () => AddDocumentViewModel(locator(), locator()),
    );
    locator.registerLazySingleton<AssignedServiceViewModel>(
      () => AssignedServiceViewModel(locator(), locator()),
    );
    locator.registerLazySingleton<OTPViewModel>(
      () => OTPViewModel(locator(), locator()),
    );
    locator.registerLazySingleton<EditProfileViewModel>(
      () => EditProfileViewModel(locator(), locator()),
    );
  }
}
