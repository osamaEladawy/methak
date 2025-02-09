abstract class SplashRepositoryInterface {
  void setThemeStatusSharedPref(bool darkTheme);

  Future<bool> initSharedData(bool isDark);

  Future<bool> getCurrentThemeSharedPref();

}