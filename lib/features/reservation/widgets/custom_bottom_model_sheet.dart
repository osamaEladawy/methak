import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/functions/check_for_current_language.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/widgets/primary_button.dart';

class CustomBottomModelSheet extends StatelessWidget {
  const CustomBottomModelSheet({
    super.key,
    this.isConfirmRequest = false,
  });

  final bool isConfirmRequest;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isConfirmRequest ? 364.h : 422.h,
      width: 390.w,
      padding:isArabic? EdgeInsets.symmetric(
        horizontal: 20.w,
         vertical: 20.h,
      ):EdgeInsets.symmetric(
        horizontal: 20.w,
         vertical: 5.h,
      ),
      child: Column(
        children: [
          Text(
            isConfirmRequest ? tr.confirmOrder : tr.cancelOrder,
            style: AppTextStyle.textStyle(
              appFontSize: 18.sp,
              appFontHeight: 27.34.sp,
              appFontWeight: FontWeight.w400,
              color: ColorResources.blackColor,
            ),
          ),
          isConfirmRequest
              ? SizedBox(
                  height: 132.4.h,
                )
              : SizedBox(height: 146.h),
          Text(
            isConfirmRequest
                ? tr.theOrderHasBeenSuccessfullyConfirmed
                : tr.doYouWantToCancelYourReservation,
            style: AppTextStyle.textStyle(
              appFontSize: 18.sp,
              appFontHeight: 27.sp,
              appFontWeight: FontWeight.w400,
              color: ColorResources.blackColor,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            isConfirmRequest
                ? tr.aNotificationWillBeSent
                : tr.byConfirmingTheRequest,
            textAlign: TextAlign.center,
            style: AppTextStyle.textStyle(
              appFontSize: 16.sp,
              appFontHeight: 24.sp,
              appFontWeight: FontWeight.w400,
              color: ColorResources.blackColor,
            ),
          ),
          SizedBox(height: 16.h),
          PrimaryButton(
            title: isConfirmRequest ? tr.good : tr.cancelOrder,
            onPressed: () {
              context.pop();
            },
          )
        ],
      ),
    );
  }
}
