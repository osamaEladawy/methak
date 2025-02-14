import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/core/routes/routes.dart';
import 'package:methak/features/reservation/widgets/select_time_morning.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/resources/icons_resources.dart';

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
          enableDrag: false,
          showDragHandle: false,
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
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  IconsResources.arrowR,
                  color: Color(0xff114546),
                  height: 24.h,
                  width: 24.w,
                ),
                Text(
                  "2 نوفمبر",
                  style: AppTextStyle.textStyle(
                    appFontSize: 16.sp,
                    appFontHeight: 24.sp,
                    appFontWeight: FontWeight.w400,
                    color: Color(0xff114546),
                  ),
                ),
                SvgPicture.asset(
                  IconsResources.arrowLeft,
                  color: Color(0xff114546),
                  height: 24.h,
                  width: 24.w,
                ),
              ],
            ),
            SizedBox(height: 16.h),
            SizedBox(
              height: 80.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    height: 80.h,
                    width: 50.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      color: ColorResources.primaryColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2",
                          style: AppTextStyle.textStyle(
                            appFontSize: 23.sp,
                            appFontHeight: 34.94.sp,
                            appFontWeight: FontWeight.w400,
                            color: ColorResources.whiteColor,
                          ),
                        ),
                        Text(
                          "السبت",
                          style: AppTextStyle.textStyle(
                            appFontSize: 12.sp,
                            appFontHeight: 18.sp,
                            appFontWeight: FontWeight.w400,
                            color: ColorResources.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                itemCount: 20,
              ),
            ),
            SizedBox(height: 23),
            Text(
              tr.setTime,
              style: AppTextStyle.textStyle(
                appFontSize: 16.sp,
                appFontHeight: 24.sp,
                appFontWeight: FontWeight.w400,
                color: ColorResources.blackColor,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              tr.morningPeriod,
              style: AppTextStyle.textStyle(
                appFontSize: 16.sp,
                appFontHeight: 24.sp,
                appFontWeight: FontWeight.w400,
                color: ColorResources.blackColor,
              ),
            ),
            SizedBox(height: 6.h),
            BlocBuilder<ReservationCubit, ReservationState>(
              builder: (context, state) {
                return Row(
                  spacing: 10.w,
                  children: [
                    ...List.generate(
                        ReservationCubit.instance.timesMorning.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          ReservationCubit.instance.selectMorningTime(index);
                        },
                        child: SelectTimeMorning(
                          colorContainer:
                              ReservationCubit.instance.currentIndex == index
                                  ? ColorResources.primaryColor
                                  : Color(0xffEAF9F9),
                          title: ReservationCubit.instance.timesMorning[index],
                        ),
                      );
                    }),
                  ],
                );
              },
            ),
            SizedBox(height: 13.h),
            Text(
              tr.eveningPeriod,
              style: AppTextStyle.textStyle(
                appFontSize: 16.sp,
                appFontHeight: 24.sp,
                appFontWeight: FontWeight.w400,
                color: ColorResources.blackColor,
              ),
            ),
            SizedBox(height: 6.h),
            BlocBuilder<ReservationCubit, ReservationState>(
              builder: (context, state) {
                return Row(
                  spacing: 10.w,
                  children: [
                    ...List.generate(
                        ReservationCubit.instance.timesMorning.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          ReservationCubit.instance.selectMorningTime(index);
                        },
                        child: SelectTimeMorning(
                          colorContainer:
                              ReservationCubit.instance.currentIndex == index
                                  ? ColorResources.primaryColor
                                  : Color(0xffEAF9F9),
                          title: ReservationCubit.instance.timesMorning[index],
                        ),
                      );
                    }),
                  ],
                );
              },
            ),
            SizedBox(height: 23.h),
            Text(
              tr.expandingNotes,
              style: AppTextStyle.textStyle(
                appFontSize: 16.sp,
                appFontHeight: 24.sp,
                appFontWeight: FontWeight.w400,
                color: ColorResources.blackColor,
              ),
            ),
            SizedBox(height: 12.h),
            SizedBox(
              height: 100.h,
              width: 350.w,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: ColorResources.blackColor.withOpacity(0.08),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: ColorResources.blackColor.withOpacity(0.08),
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xffFCFCFC),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
