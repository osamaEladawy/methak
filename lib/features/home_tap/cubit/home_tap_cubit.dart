import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:methak/app/my_app.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/features/home/screen/home_screen.dart';
import 'package:methak/features/home_tap/models/bottom_app_bar_model.dart';
import 'package:methak/features/profile/cubit/profile_cubit.dart';
import 'package:methak/features/profile/screens/profile_screen.dart';
import 'package:methak/features/reservation/screens/reservation_screen.dart';
import 'package:methak/features/search/screens/search_screen.dart';
import 'package:methak/features/services/screens/services_screen.dart';
import 'package:methak/shared/resources/icons_resources.dart';

part 'home_tap_state.dart';

class HomeTapCubit extends Cubit<HomeTapState> {
  HomeTapCubit() : super(HomeTapInitial());

  static final HomeTapCubit _homeTapCubit =
      BlocProvider.of(navigatorKey.currentContext!);
  static HomeTapCubit get instance => _homeTapCubit;

  final PageController controller = PageController();

  int currentIndex = 0;
  int activeButtonIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    ReservationScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  void changePage(int index) {
    currentIndex = index;
    emit(SelectPage(index: index));
    emit(ChangeColor());
  }

  void changePageController(int index) {
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
    emit(SelectPage(index: index));
  }

  List<BottomAppBarModel> bottomsBarPages = [
    BottomAppBarModel(id: 1, title: tr.browse, icon: IconsResources.object),
    BottomAppBarModel(id: 1, title: tr.myBookings, icon: IconsResources.hogzat),
    BottomAppBarModel(id: 1, title: tr.research, icon: IconsResources.search),
    BottomAppBarModel(
        id: 1, title: tr.profile, icon: IconsResources.profileIcon),
  ];
}
