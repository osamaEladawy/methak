import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:methak/app/my_app.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/core/routes/routes.dart';
import 'package:methak/features/onboard/models/onboard_model.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/image_resources.dart';

part 'onboard_state.dart';

class OnboardCubit extends Cubit<OnboardState> {
  OnboardCubit() : super(OnboardInitial());
  static final OnboardCubit _onboardCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static OnboardCubit get instance => _onboardCubit;
  PageController controller = PageController();
  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeIndex(index: currentIndex));
  }

  void back() {
    if (currentIndex > 0) {
      currentIndex--;
      controller.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
      currentIndex = 0;
      //* use shared preference to not display on-board again
      navigatorKey.currentContext!.pushReplacementNamed(Routes.signUp);
    }
  }

  void nextPage() {
    currentIndex++;
    if (currentIndex > onBoarding.length - 1) {
      //* use shared preference to not display on-board again
      navigatorKey.currentContext!.pushReplacementNamed(Routes.login);
    } else {
      controller.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  // String get displayTitleButton {
  //   if (currentIndex == onBoarding.length - 1) {
  //     return tr.letsGetStarted;
  //   } else {
  //     return tr.next;
  //   }
  // }

  // String get displayTitleUnderButton {
  //   if (currentIndex == 0) {
  //     return tr.skip;
  //   } else {
  //     return tr.back;
  //   }
  // }

  List<OnboardModel> onBoarding = [
    OnboardModel(
      image: ImagesResources.onboard1,
      title: tr.consultingApplication,
      description: tr.descriptionOnboard,
    ),
    OnboardModel(
      image: ImagesResources.onboard2,
      title: tr.consultingApplication,
      description: tr.descriptionOnboard,
    ),
    OnboardModel(
      image: ImagesResources.onboard1,
      title: tr.consultingApplication,
      description: tr.descriptionOnboard,
    ),
  ];
}
