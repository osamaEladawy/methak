import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:methak/app/my_app.dart';

import '../domain/service/splash_service_interface.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({required this.splashServiceInterface}) : super(ThemeInitial()){
    _loadCurrentTheme();
  }
  final SplashServiceInterface splashServiceInterface;
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  static final ThemeCubit _themeCubit = BlocProvider.of(navigatorKey.currentContext!);

  static ThemeCubit get instance => _themeCubit;

  void toggleTheme(){
    _darkTheme = !_darkTheme;
    splashServiceInterface.toggleTheme(_darkTheme);
    emit(ThemeInitial(darkTheme: _darkTheme));
  }

  Future<bool> initSharedData() {
    return splashServiceInterface.initSharedData(_darkTheme);
  }

  void _loadCurrentTheme() async{
    _darkTheme = await splashServiceInterface.loadCurrentTheme();
    emit(ThemeInitial(darkTheme: _darkTheme));
  }

}
