import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:methak/app/my_app.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/features/services/models/category_mode.dart';

part 'services_state.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit() : super(ServicesInitial());

  static final ServicesCubit _servicesCubit = BlocProvider.of(navigatorKey.currentContext!);
  static ServicesCubit get instance => _servicesCubit;
  int currentIndex = 0;

  void selectServices(int index){
    currentIndex= index;
    emit(ChangeIndex());
    emit(ChangeColor());
  }


  List<CategoryMode>  categories =[
    CategoryMode(id: 1, title: tr.consultations,subtitle: tr.generalLegal),
    CategoryMode(id: 2, title: tr.consultations,subtitle: tr.forBusinessAndCompanies),
    CategoryMode(id: 3, title: tr.consultations,subtitle: tr.legalForRealEstate),
    CategoryMode(id: 4, title: tr.consultations,subtitle: tr.criminalLaw),

    CategoryMode(id: 5, title: tr.consultations,subtitle: tr.familyLaw),
    CategoryMode(id: 6, title: tr.consultations,subtitle: tr.legalForWorkAndEmployment),
    CategoryMode(id: 7, title: tr.consultations,subtitle: tr.financialLegality),
    CategoryMode(id: 8, title: tr.consultations,subtitle: tr.electronicLegal),
    CategoryMode(id: 9, title: tr.consultations,subtitle: tr.arbitrationAndDisputeResolution),
  ];
}
