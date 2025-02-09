part of 'onboard_cubit.dart';

@immutable
sealed class OnboardState {}

final class OnboardInitial extends OnboardState {}
final class SelectPage extends OnboardState {
  final int pageIndex;

  SelectPage({required this.pageIndex});
}


final class ChangeIndex extends OnboardState {
  final int index;

  ChangeIndex({required this.index});
}
