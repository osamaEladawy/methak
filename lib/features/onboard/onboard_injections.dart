import 'package:methak/app_injections.dart';
import 'package:methak/features/onboard/cubit/onboard_cubit.dart';

void onBoardInjection(){
  getIt.registerFactory<OnboardCubit>(()=>OnboardCubit());
}