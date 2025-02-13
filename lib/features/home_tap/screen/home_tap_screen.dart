import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/features/home_tap/cubit/home_tap_cubit.dart';
import 'package:methak/features/home_tap/widgets/custom_appBar.dart';
import 'package:methak/shared/resources/color_resources.dart';

class HomeTapScreen extends StatelessWidget {
  const HomeTapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTapCubit, HomeTapState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomSheet(
            backgroundColor: Colors.white,
            elevation: 10,
            shadowColor: ColorResources.blackColor.withOpacity(0.05),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
            ),
            onClosing: () {},
            builder:(context)=> Container(
              height: 84.h,
              padding:
              EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: ColorResources.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
                boxShadow: [
                  BoxShadow(
                      color: ColorResources.blackColor.withOpacity(0.05),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: Offset(0, -5)),
                ],
              ),
              child: Row(
                children: [
                  ...List.generate(HomeTapCubit.instance.bottomsBarPages.length,
                      (index) {
                    return CustomButtonAppBar(
                      colorText: HomeTapCubit.instance.currentIndex == index
                          ? ColorResources.primaryColor
                          : Color(0xff484C52),
                      active: HomeTapCubit.instance.currentIndex == index
                          ? true
                          : false,
                      onPressed: () {
                        HomeTapCubit.instance.changePage(index);
                      },
                      image: HomeTapCubit.instance.bottomsBarPages[index].icon!,
                      text: HomeTapCubit.instance.bottomsBarPages[index].title!,
                    );
                  }),
                ],
              ),
            ),
          ),
          body: PopScope(
            child: HomeTapCubit.instance.pages
                .elementAt(HomeTapCubit.instance.currentIndex),
            onPopInvokedWithResult: (d, s) {
              return;
            },
          ),
        );
      },
    );
  }
}
