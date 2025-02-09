



import 'package:methak/app_injections.dart';

import 'cubit/theme_cubit.dart';
import 'domain/repositories/splash_repository.dart';
import 'domain/repositories/splash_repository_interface.dart';
import 'domain/service/splash_service.dart';
import 'domain/service/splash_service_interface.dart';

void initSplashInjection() {
  ///Blocs
  getIt.registerFactory<ThemeCubit>(() => ThemeCubit(splashServiceInterface: getIt()));

  ///Repositories
  getIt.registerLazySingleton<SplashRepositoryInterface>(() => SplashRepository(sharedPreferences: getIt()));

  ///services
  getIt.registerLazySingleton<SplashServiceInterface>(() => SplashService(splashRepositoryInterface: getIt()));

}