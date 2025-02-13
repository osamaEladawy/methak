import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/core/routes/routes.dart';
import 'package:methak/features/services/cubit/services_cubit.dart';
import 'package:methak/features/services/widgets/custom_card.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/widgets/custom_appbar_widget.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: CustomAppBarWidget(
          title: tr.legalConsultations,
        ),
      ),
      body: BlocBuilder<ServicesCubit, ServicesState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 12.h,
                ),
                itemCount: ServicesCubit.instance.categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      ServicesCubit.instance.selectServices(index);
                      context.pushNamed(Routes.displayServiceScreen);
                    },
                    child: CustomCard(
                      title:
                          '${ServicesCubit.instance.categories[index].title}',
                      subtitle:
                          '${ServicesCubit.instance.categories[index].subtitle}',
                      colorContainer:
                          ServicesCubit.instance.currentIndex == index
                              ? Color(0xffFCFCFC)
                              : Color(0xffEAF9F9),
                      colorBorder: ServicesCubit.instance.currentIndex == index
                          ? ColorResources.blackColor.withOpacity(0.08)
                          : Color(0xffBFEDEE),
                    ),
                  );
                }),
          );
        },
      ),
    );
  }
}
