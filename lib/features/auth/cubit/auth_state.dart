part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}
final class ShowPassword extends AuthState {}
final class ChangeColor extends AuthState {}
