import 'package:foodi_chefs/core/services/auth/auth_service.dart';
import 'package:get_it/get_it.dart';
import '../network/api_service.dart';

final sl = GetIt.instance;

void setupLocator() {
  sl.registerLazySingleton<AuthService>(() => AuthService());
  sl.registerLazySingleton<ApiService>(() => ApiService());
}
