import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:methak/app/my_app.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/features/reservation/models/select_type_consultations_model.dart';
import 'package:methak/shared/resources/icons_resources.dart';

part 'reservation_state.dart';

class ReservationCubit extends Cubit<ReservationState> {
  ReservationCubit() : super(ReservationInitial());

  static final ReservationCubit _reservationCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static ReservationCubit get instance => _reservationCubit;
  int currentIndex = 0;
  int currentSelectedTypeIndex = 0;
  int indexOfModifyOrCancelOrder = 0;
  int selectTimeMorning = 0;
  bool isValue = false;

  void selectPaymentMethod(bool value){
    isValue = value;
    emit(SelectPaymentMethods());
    emit(ChangeColor());
  }

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeIndex());
    emit(ChangeColor());
  }
  void selectMorningTime(int index) {
    selectTimeMorning = index;
    emit(SelectTimesMorning());
    emit(ChangeColor());
  }

  void modifyOrCancelOrder(int index) {
    indexOfModifyOrCancelOrder = index;
    emit(ModifyOrCancelOrder());
    emit(ModifyOrCancelOrderColor());
  }

  void selectType(int index) {
    currentSelectedTypeIndex = index;
    emit(ChangeIndex());
    emit(ChangeColor());
  }

  List<String> words = [
    tr.modifyReservation,
    tr.cancellationOfReservation,
  ];
  List<String> timesMorning = [
    "9:00 ص",
    "10:00 ص",
  ];
  List<String> titlesButtons = [
    tr.saveEdit,
    tr.cancelModification,
  ];

  List<SelectTypeConsultationsModel> consultations = [
    SelectTypeConsultationsModel(
      id: 1,
      type: tr.video,
      icon: IconsResources.video,
    ),
    SelectTypeConsultationsModel(
      id: 2,
      type: tr.chat,
      icon: IconsResources.messages,
    ),
    SelectTypeConsultationsModel(
      id: 3,
      type: tr.office,
      icon: IconsResources.video2,
    ),
  ];
}
