part of 'home_tap_cubit.dart';

sealed class HomeTapState extends Equatable {
  const HomeTapState();

  @override
  List<Object> get props => [];
}

final class HomeTapInitial extends HomeTapState {}
final class ChangeColor extends HomeTapState {}
final class SelectPage extends HomeTapState {
  final int index;
  const SelectPage({required this.index});
}
