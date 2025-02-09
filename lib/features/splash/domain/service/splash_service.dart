import 'package:methak/features/splash/domain/service/splash_service_interface.dart';

import '../repositories/splash_repository_interface.dart';

class SplashService implements SplashServiceInterface{
  final SplashRepositoryInterface splashRepositoryInterface;

  SplashService({required this.splashRepositoryInterface});

  @override
  void toggleTheme(bool darkTheme) {
    // TODO: implement toggleTheme
    splashRepositoryInterface.setThemeStatusSharedPref(darkTheme);
  }

  @override
  Future<bool> initSharedData(bool isDark) {
    return splashRepositoryInterface.initSharedData(isDark);
  }

  @override
  Future<bool> loadCurrentTheme() async {
    return await splashRepositoryInterface.getCurrentThemeSharedPref();
  }


}