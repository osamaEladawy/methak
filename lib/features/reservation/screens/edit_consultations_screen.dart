import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/core/routes/routes.dart';
import 'package:methak/features/reservation/cubit/reservation_cubit.dart';
import 'package:methak/features/reservation/widgets/select_type_consultation.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/widgets/custom_appbar_widget.dart';

import '../widgets/custom_buttons_bottom_sheet.dart';

class EditConsultationsScreen extends StatelessWidget {
  const EditConsultationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: CustomAppBarWidget(
          isEditConsultationsScreen: true,
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
            return BlocBuilder<ReservationCubit, ReservationState>(
              builder: (context, state) {
                return Container(
                  height: 95.h,
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
                    spacing: 10.w,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(2, (index) {
                        return CustomButtonsBottomSheet(
                          onTap: () {
                            ReservationCubit.instance
                                .modifyOrCancelOrder(index);
                            if(ReservationCubit.instance.indexOfModifyOrCancelOrder==0){
                              context.pushNamed(Routes.bookTheServiceScreen);
                            }
                          },
                          title: ReservationCubit.instance.titlesButtons[index],
                          colorContainer: ReservationCubit
                                      .instance.indexOfModifyOrCancelOrder ==
                                  index
                              ? ColorResources.primaryColor
                              : ColorResources.whiteColor,
                          colorText: ReservationCubit
                                      .instance.indexOfModifyOrCancelOrder ==
                                  index
                              ? ColorResources.whiteColor
                              : ColorResources.primaryColor,
                        );
                      })
                    ],
                  ),
                );
              },
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
