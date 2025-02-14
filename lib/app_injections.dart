import 'package:get_it/get_it.dart';
import 'package:methak/core/apis/api/api_services.dart';
import 'package:methak/core/apis/api/http_services.dart';
import 'package:methak/features/auth/auth_injections.dart';
import 'package:methak/features/home/home_ijection.dart';
import 'package:methak/features/home_tap/home_tap_injection.dart';
import 'package:methak/features/onboard/onboard_injections.dart';
import 'package:methak/features/profile/profile_injections.dart';
import 'package:methak/features/reservation/reservation_injections.dart';
import 'package:methak/features/search/search_injections.dart';
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
  homeTapInjection();
  homeInjection();
  searchInjections();
  reservationInjections();
  profileInjections();

  getIt.registerFactory<LocationCubit>(() => LocationCubit());

  final HttpServices http = HttpServices();
  //final DioServices dio = DioServices(dio: Dio());
  getIt.registerSingleton<ApiServices>(http);
}
