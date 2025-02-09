import 'package:methak/app_injections.dart';
import 'package:methak/features/services/cubit/services_cubit.dart';

void servicesInjections(){
  getIt.registerFactory<ServicesCubit>(()=>ServicesCubit());
}