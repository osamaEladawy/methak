import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:methak/app/my_app.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/features/home/models/category_model.dart';
import 'package:methak/shared/resources/image_resources.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static final HomeCubit _homeCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static HomeCubit get instance => _homeCubit;

  PageController controller = PageController();
  int currentIndex = 0;

  void changeIndex(pageIndex) {
    // controller.animateToPage(
    //   pageIndex,
    //   duration: Duration(milliseconds: 300),
    //   curve: Curves.easeIn,
    // );
    currentIndex = pageIndex;
    ChangeIndex();
    ChangeColor();
  }

  void changeBanner() {
    controller.animateToPage(
      (currentIndex + 1) % categories.length,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
    currentIndex = (currentIndex + 1) % categories.length;
  }

  List banners = [
    ImagesResources.abbBarHome,
    ImagesResources.abbBarHome,
    ImagesResources.abbBarHome,
  ];

  List<CategoryModel> categories = [
    CategoryModel(
      id: 1,
      title: tr.legalConsultations,
      icon: ImagesResources.serviceLaw,
    ),
    CategoryModel(
      id: 1,
      title: tr.familyConsultations,
      icon: ImagesResources.familyLaw,
    ),
    CategoryModel(
      id: 1,
      title: tr.medicalConsultations,
      icon: ImagesResources.doctorsService,
    ),
    CategoryModel(
      id: 1,
      title: tr.accountingConsulting,
      icon: ImagesResources.calculator,
    ),
    CategoryModel(
      id: 1,
      title: tr.healthCare,
      icon: ImagesResources.healthyService,
    ),
    CategoryModel(
      id: 1,
      title: tr.careerGuidance,
      icon: ImagesResources.learnMore,
    ),
    CategoryModel(
      id: 1,
      title: tr.diet,
      icon: ImagesResources.diet,
    ),
    CategoryModel(
      id: 1,
      title: tr.fitness,
      icon: ImagesResources.fitness,
    ),
    CategoryModel(
      id: 1,
      title: tr.mentalHealth,
      icon: ImagesResources.mentality,
    ),
  ];
}
