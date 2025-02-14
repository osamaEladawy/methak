import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/core/routes/routes.dart';
import 'package:methak/features/reservation/cubit/reservation_cubit.dart';
import 'package:methak/features/reservation/widgets/custom_bottom_model_sheet.dart';
import 'package:methak/features/reservation/widgets/custom_driver.dart';
import 'package:methak/features/reservation/widgets/custom_row_display_date.dart';
import 'package:methak/features/reservation/widgets/custom_row_display_price.dart';
import 'package:methak/features/reservation/widgets/custom_row_display_type_consultation.dart';
import 'package:methak/features/reservation/widgets/modify_or_cancellation_reservation.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/resources/icons_resources.dart';
import 'package:methak/shared/widgets/custom_appbar_widget.dart';
import 'package:methak/shared/widgets/drop_down_text_field.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: CustomAppBarWidget(
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${tr.hello} اسامه 👋",
                style: AppTextStyle.textStyle(
                  appFontSize: 18.sp,
                  appFontHeight: 27.34.sp,
                  appFontWeight: FontWeight.w400,
                  color: ColorResources.whiteColor,
                ),
              ),
              Text(
                tr.welcomeToTheElectronic,
                style: AppTextStyle.textStyle(
                  appFontSize: 14.sp,
                  appFontHeight: 21.sp,
                  appFontWeight: FontWeight.w400,
                  color: ColorResources.whiteColor,
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              CustomDropDownTextField(
                initialValue: tr.everyone,
                items: [tr.everyone, "ok"],
              ),
              SizedBox(height: 20.h),
              CustomRowDisplayDate(
                titleButton: tr.coming,
                colorContainer: Color(0xff1B763B),
              ),
              SizedBox(height: 8.h),
              CustomRowDisplayTypeConsultation(titleDotGreen: tr.video),
              SizedBox(height: 8.h),
              CustomDriver(),
              SizedBox(height: 8.h),
              CustomRowDisplayPrice(
                widget: BlocBuilder<ReservationCubit, ReservationState>(
                  builder: (context, state) {
                    return Row(
                      spacing: 10.w,
                      children: [
                        ...List.generate(ReservationCubit.instance.words.length,
                            (index) {
                          return ModifyOrCancellationReservation(
                            onTap: () {
                              ReservationCubit.instance.changeIndex(index);
                              if (ReservationCubit.instance.currentIndex == 0) {
                                context
                                    .pushNamed(Routes.editConsultationsScreen);
                              } else {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return CustomBottomModelSheet();
                                    });
                              }
                            },
                            title: ReservationCubit.instance.words[index],
                            colorContainer:
                                ReservationCubit.instance.currentIndex == index
                                    ? ColorResources.primaryColor
                                    : ColorResources.whiteColor,
                            colorText:
                                ReservationCubit.instance.currentIndex == index
                                    ? ColorResources.whiteColor
                                    : Color(0xffFF0000),
                          );
                        }),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 16.h),
              CustomDriver(),
              SizedBox(height: 16.h),
              CustomRowDisplayDate(
                titleButton: tr.itsOver,
                colorContainer: ColorResources.primaryColor,
              ),
              SizedBox(height: 5.h),
              CustomRowDisplayTypeConsultation(
                titleDotGreen: tr.office,
                widget: Container(
                  height: 25,
                  //width: 153.w,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: Color(0xffEAF9F9),
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Row(
                    spacing: 5.w,
                    children: [
                      SvgPicture.asset(
                        IconsResources.map,
                        height: 16.h,
                        width: 16.w,
                      ),
                      Text(
                        tr.addressOnTheMap,
                        style: AppTextStyle.textStyle(
                          appFontSize: 14.sp,
                          appFontHeight: 21.sp,
                          appFontWeight: FontWeight.w400,
                          color: Color(0xff114546),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              CustomDriver(),
              SizedBox(height: 8.h),
              CustomRowDisplayPrice(),
              SizedBox(height: 16.h),
              CustomDriver(),
              SizedBox(height: 16.h),
              CustomRowDisplayDate(
                titleButton: tr.itHasBeenCancelled,
                colorContainer: Color(0xffFF0000),
              ),
              SizedBox(height: 10.h),
              CustomRowDisplayTypeConsultation(
                titleDotGreen: tr.chat,
              ),
              SizedBox(height: 8.h),
              CustomDriver(),
              SizedBox(height: 8.h),
              CustomRowDisplayPrice(),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
