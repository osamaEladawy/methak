import 'package:methak/app_injections.dart';
import 'package:methak/features/reservation/cubit/reservation_cubit.dart';

void reservationInjections(){
  getIt.registerFactory<ReservationCubit>(()=>ReservationCubit());
}