import 'package:methak/app_injections.dart';
import 'package:methak/features/auth/cubit/auth_cubit.dart';

void authInjections(){
  getIt.registerFactory<AuthCubit>(()=>AuthCubit());
}