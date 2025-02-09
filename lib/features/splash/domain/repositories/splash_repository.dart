import 'package:methak/core/constant/appStrings.dart';
import 'package:methak/features/splash/domain/repositories/splash_repository_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashRepository implements SplashRepositoryInterface {
  final SharedPreferences sharedPreferences;
  SplashRepository({required this.sharedPreferences});

  @override
  Future<bool> initSharedData(bool isDark) {
    if (!sharedPreferences.containsKey(AppStrings.theme)) {
      sharedPreferences.setBool(AppStrings.theme, isDark);
    }
    return Future.value(true);
  }

  @override
  void setThemeStatusSharedPref(bool darkTheme) {
    sharedPreferences.setBool(AppStrings.theme, darkTheme);
  }

  @override
  Future<bool> getCurrentThemeSharedPref() async {
    return sharedPreferences.getBool(AppStrings.theme) ?? false;
  }
}
