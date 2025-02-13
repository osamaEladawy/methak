
import 'package:methak/app_injections.dart';
import 'package:methak/features/home/cubit/home_cubit.dart';

void homeInjection(){
  getIt.registerFactory<HomeCubit>(()=>HomeCubit());
}