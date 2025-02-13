import 'package:methak/app_injections.dart';
import 'package:methak/features/search/cubit/search_cubit.dart';

void searchInjections(){
  getIt.registerFactory<SearchCubit>(()=>SearchCubit());
}