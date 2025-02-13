import 'package:methak/app_injections.dart';
import 'package:methak/features/home_tap/cubit/home_tap_cubit.dart';

void homeTapInjection() {
  getIt.registerFactory<HomeTapCubit>(() => HomeTapCubit());
}
