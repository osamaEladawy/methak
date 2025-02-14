import 'package:methak/app_injections.dart';
import 'package:methak/features/profile/cubit/profile_cubit.dart';

void profileInjections(){
  getIt.registerFactory<ProfileCubit>(()=>ProfileCubit());
}