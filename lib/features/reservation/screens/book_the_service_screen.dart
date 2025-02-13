import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/core/routes/routes.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/color_resources.dart';

import '../../../shared/widgets/custom_appbar_widget.dart';
import '../cubit/reservation_cubit.dart';
import '../widgets/custom_buttons_bottom_sheet.dart';
import '../widgets/select_type_consultation.dart';

class BookTheServiceScreen extends StatelessWidget {
  const BookTheServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: CustomAppBarWidget(
          title: tr.bookTheService,
        ),
      ),
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
          builder: (context) {
            return Container(
              height: 95.h,
              padding:
                  EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
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
                spacing: 10.w,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtonsBottomSheet(
                    onTap: () {
                      context.pushNamed(Routes.serviceRequest);
                    },
                    title: tr.confirmOrder,
                    colorContainer: ColorResources.primaryColor,
                    colorText: ColorResources.whiteColor,
                  ),
                  Text(
                    "120ج.م",
                    style: AppTextStyle.textStyle(
                      appFontSize: 18.sp,
                      appFontHeight: 27.sp,
                      appFontWeight: FontWeight.w400,
                      color: ColorResources.blackColor,
                    ),
                  ),
                ],
              ),
            );
          }),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 23.24.h),
            BlocBuilder<ReservationCubit, ReservationState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 10.w,
                  children: [
                    ...List.generate(
                        ReservationCubit.instance.consultations.length,
                            (index) {
                          return SelectTypeConsultation(
                            onTap: () {
                              ReservationCubit.instance.selectType(index);
                            },
                            type: ReservationCubit
                                .instance.consultations[index].type!,
                            icon: ReservationCubit
                                .instance.consultations[index].icon!,
                            colorText: ReservationCubit
                                .instance.currentSelectedTypeIndex ==
                                index
                                ? ColorResources.whiteColor
                                : Color(0xff114546),
                            colorContainer: ReservationCubit
                                .instance.currentSelectedTypeIndex ==
                                index
                                ? ColorResources.primaryColor
                                : ColorResources.whiteColor,
                            colorBorder: ReservationCubit
                                .instance.currentSelectedTypeIndex ==
                                index
                                ? Colors.transparent
                                : ColorResources.blackColor.withOpacity(0.08),
                          );
                        })
                  ],
                );
              },
            ),
            SizedBox(height: 23.h),
          ],
        ),
      ),

    );
  }
}
