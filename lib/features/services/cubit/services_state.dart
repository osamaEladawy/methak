part of 'services_cubit.dart';

sealed class ServicesState extends Equatable {
  const ServicesState();

  @override
  List<Object> get props => [];
}

final class ServicesInitial extends ServicesState {}
final class ChangeIndex extends ServicesState {}
final class ChangeColor extends ServicesState {}
