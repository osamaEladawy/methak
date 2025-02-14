import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/features/reservation/cubit/reservation_cubit.dart';
import 'package:methak/features/reservation/widgets/custom_driver.dart';
import 'package:methak/shared/resources/icons_resources.dart';

import '../../../core/functions/translate.dart';
import '../../../shared/classes/text_style.dart';
import '../../../shared/resources/color_resources.dart';
import '../../../shared/widgets/custom_appbar_widget.dart';
import '../widgets/custom_bottom_model_sheet.dart';
import '../widgets/custom_buttons_bottom_sheet.dart';
import '../widgets/display_info_request_service.dart';
import '../widgets/select_payment_method.dart';

class ServiceRequestScreen extends StatelessWidget {
  const ServiceRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: CustomAppBarWidget(
          title: tr.serviceRequest,
        ),
      ),
      bottomNavigationBar: BottomSheet(
          enableDrag: false,
          showDragHandle: false,
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
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return CustomBottomModelSheet(
                              isConfirmRequest: true,
                            );
                          });
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
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 75.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Color(0xffEEEEEE).withOpacity(0.20),
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      width: 1.w,
                      color: Color(0xffBFEDEE),
                    ),
                  ),
                ),
                SizedBox(width: 16.w),
                Column(
                  spacing: 5.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tr.generalLegalAdvice,
                      style: AppTextStyle.textStyle(
                        appFontSize: 14.sp,
                        appFontHeight: 21.sp,
                        appFontWeight: FontWeight.w400,
                        color: ColorResources.blackColor,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          color: Color(0xff292D32),
                          size: 16,
                        ),
                        Text(
                          "السبت , 2 نوفمبر , 12:00م",
                          style: AppTextStyle.textStyle(
                            appFontSize: 12.sp,
                            appFontHeight: 18.sp,
                            appFontWeight: FontWeight.w400,
                            color: Color(0xff3F3D56),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 70.w,
                      height: 25.h,
                      alignment: Alignment.center,
                      padding:
                      EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                      decoration: BoxDecoration(
                        color: Color(0xffEAF9F9),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 5.h,
                            width: 5.w,
                            decoration: BoxDecoration(
                              color: Color(0xff1B763B),
                              borderRadius: BorderRadius.circular(100.r),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            tr.video,
                            style: AppTextStyle.textStyle(
                              appFontSize: 10.sp,
                              appFontHeight: 15.sp,
                              appFontWeight: FontWeight.w400,
                              color: Color(0xff3F3D56),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12.h),
            CustomDriver(),
            SizedBox(height: 10.h),
            Text(
              tr.paymentSummary,
              style: AppTextStyle.textStyle(
                appFontSize: 14.sp,
                appFontHeight: 18.sp,
                appFontWeight: FontWeight.w700,
                color: ColorResources.blackColor,
              ),
            ),
            SizedBox(height: 10.h),
            DisplayInfoRequestService(
              title: tr.subtotal,
              price: '2.00 ج.م',
            ),
            SizedBox(height: 10.h),
            DisplayInfoRequestService(
              title: tr.delivery,
              price: '0.30 ج.م',
            ),
            SizedBox(height: 10.h),
            DisplayInfoRequestService(
              isTotal: true,
              title: tr.totalAmount,
              price: '2.60 ج.م',
            ),
            SizedBox(height: 10.h),
            CustomDriver(),
            SizedBox(height: 12.h),
            Text(
              tr.paymentThrough,
              style: AppTextStyle.textStyle(
                appFontSize: 18.sp,
                appFontHeight: 27.sp,
                appFontWeight: FontWeight.w400,
                color: ColorResources.blackColor,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              tr.theRestaurantOffers,
              style: AppTextStyle.textStyle(
                appFontSize: 14.sp,
                appFontHeight: 21.sp,
                appFontWeight: FontWeight.w400,
                color: Color(0xff686868),
              ),
            ),
            SizedBox(height: 13.h),
            BlocBuilder<ReservationCubit, ReservationState>(
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: RadioListTile(
                          activeColor: ColorResources.primaryColor,
                          title: SelectPaymentMethod(
                            title: tr.creditCard,
                            icon: IconsResources.cards,
                          ),
                          value: false,
                          groupValue: ReservationCubit.instance.isValue,
                          onChanged: (val) {
                            ReservationCubit.instance.selectPaymentMethod(val!);

                          }),
                    ), Flexible(
                      child: RadioListTile(
                          activeColor: ColorResources.primaryColor,
                          title: SelectPaymentMethod(
                            title: tr.inCash,
                            icon: IconsResources.coins,
                          ),
                          value: true,
                          groupValue: ReservationCubit.instance.isValue,
                          onChanged: (val) {
                            ReservationCubit.instance.selectPaymentMethod(val!);
                          }),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
