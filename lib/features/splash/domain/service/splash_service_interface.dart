abstract class SplashServiceInterface {
  void toggleTheme(bool darkTheme);
  Future<bool> initSharedData(bool isDark);

  Future<bool> loadCurrentTheme();
}
