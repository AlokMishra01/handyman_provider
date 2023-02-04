import '/core/api/dio_client/dio_client.dart';
import '/core/di/app_locator.dart';
import '/core/loading_overlay/loading_overlay.dart';
import '/core/logger/logger.dart';
import '/core/preference/preference.dart';
import '/core/snack_bar/app_snack_bar.dart';

abstract class BaseRepository {
  final logger = AppLocator.locator<Logger>();
  final preference = AppLocator.locator<Preference>();
  final dioClient = AppLocator.locator<DioClient>();
  final snackBar = AppSnackBar();
  final loadingOverlay = LoadingOverlay();

  BaseRepository();
}
