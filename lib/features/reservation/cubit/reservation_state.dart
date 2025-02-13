part of 'reservation_cubit.dart';

sealed class ReservationState extends Equatable {
  const ReservationState();

  @override
  List<Object> get props => [];
}

final class ReservationInitial extends ReservationState {}
final class ChangeIndex extends ReservationState {}
final class ChangeColor extends ReservationState {}
final class ModifyOrCancelOrder extends ReservationState {}
final class ModifyOrCancelOrderColor extends ReservationState {}
