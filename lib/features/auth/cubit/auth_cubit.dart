import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:methak/app/my_app.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static final AuthCubit _authCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static AuthCubit get instance => _authCubit;
  bool isLogin = true;
  bool _isDisplayPasswordLogin = false;
  bool get isDisplayPasswordLogin => _isDisplayPasswordLogin;

  bool _isDisplayPasswordSignUp = false;
  bool get isDisplayPasswordSignUp => _isDisplayPasswordSignUp;

  bool _isDisplayConfirmPasswordSignUp = false;
  bool get isDisplayConfirmPasswordSignUp => _isDisplayConfirmPasswordSignUp;

  bool isAgree = false;
  bool isRemember = false;

  void agree(val) {
    isAgree = val;
    emit(ChangeColor());
  }
  void remember(val) {
    isRemember = val;
    emit(ChangeColor());
  }

  void showPasswordLogin() {
    _isDisplayPasswordLogin = !_isDisplayPasswordLogin;
    emit(ShowPassword());
  }

  void showPasswordSignUp() {
    _isDisplayPasswordSignUp = !_isDisplayPasswordSignUp;
    emit(ShowPassword());
  }

  void showConfirmPasswordSignUp() {
    _isDisplayConfirmPasswordSignUp = !_isDisplayConfirmPasswordSignUp;
    emit(ShowPassword());
  }

  void loginOrSignUp() {
    isLogin = !isLogin;
    emit(ShowPassword());
    emit(ChangeColor());
  }
}
