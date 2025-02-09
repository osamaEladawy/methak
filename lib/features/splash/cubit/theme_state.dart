part of 'theme_cubit.dart';

@immutable
abstract class ThemeState {

}

class ThemeInitial extends ThemeState {
  final bool? darkTheme;
  ThemeInitial({this.darkTheme});
}
