import 'package:get_it/get_it.dart';
import 'package:methak/core/apis/api/api_services.dart';
import 'package:methak/core/apis/api/http_services.dart';
import 'package:methak/features/auth/auth_injections.dart';
import 'package:methak/features/onboard/onboard_injections.dart';
import 'package:methak/features/services/services_injections.dart';
import 'package:methak/features/splash/splash_injection.dart';
import 'package:methak/shared/cubits/location_bloc/location_cubit.dart';

final getIt = GetIt.instance;

Future<void> appInjections() async {
  ///features

  initSplashInjection();
  onBoardInjection();
  authInjections();
  servicesInjections();
  // homeTapInjection();
  // homeInjection();
  // foodInjection();
  // foodsInJection();
  // ordersInjection();
  // walletInjection();
  // quickInjection();
  // profileInjection();
  // settingsInjection();
  // langInjection();
  // chatInjection();
  // couponInjection();
  // authInJections();
  // bankInfoInjections();
  // reportInjection();

  getIt.registerFactory<LocationCubit>(() => LocationCubit());

  final HttpServices http = HttpServices();
  //final DioServices dio = DioServices(dio: Dio());
  getIt.registerSingleton<ApiServices>(http);
}
