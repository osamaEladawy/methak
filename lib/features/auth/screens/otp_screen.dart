import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/functions/check_for_current_language.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/core/routes/routes.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/widgets/primary_button.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 343.h,
      width: 390.w,
      padding: EdgeInsets.only(left: 10.w, right: 10.h, top: 10.h),
      decoration: BoxDecoration(
        color: ColorResources.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Column(
        children: [
          Text(
            tr.authenticationCode,
            style: AppTextStyle.textStyle(
              appFontSize: 18.sp,
              appFontHeight: 27.34.sp,
              appFontWeight: FontWeight.w400,
              color: ColorResources.blackColor,
            ),
          ),
          SizedBox(height: 16.h),
          Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              children: [
                TextSpan(
                  text: "${tr.theAuthenticationCode} 01000000000 ",
                  style: AppTextStyle.textStyle(
                    appFontSize: 14.sp,
                    appFontHeight: 21.sp,
                    appFontWeight: FontWeight.w400,
                    color: Color(0xff5C5C5C),
                  ),
                ),
                TextSpan(
                  text: " ${tr.within} 00:00",
                  style: AppTextStyle.textStyle(
                    appFontSize: 14.sp,
                    appFontHeight: 21.sp,
                    appFontWeight: FontWeight.w400,
                    color: Color(0xff31C5C7),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 23.h),
          OtpTextField(
            showCursor: false,
            alignment: Alignment.center,
            decoration: InputDecoration(),
            contentPadding: EdgeInsets.zero,
            textStyle: AppTextStyle.textStyle(
              isNoto: true,
              appFontSize: 14.sp,
              appFontHeight: 28.56.sp,
              appFontWeight: FontWeight.w500,
              color: ColorResources.blackColor,
            ),
            borderRadius: BorderRadius.circular(12.r),
            margin: isArabic
                ? EdgeInsets.only(right: 13.w)
                : EdgeInsets.only(left: 13.w),
            numberOfFields: 6,
            fieldHeight: 47.h,
            fieldWidth: 47.w,
            borderWidth: 1.w,
            //borderColor: Color(0xFFC1C9D3),
            enabledBorderColor: Color(0xFFC1C9D3),
            disabledBorderColor: Color(0xFFEBEEF1),
            focusedBorderColor: Color(0xFFEBEEF1),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            filled: true,
            fillColor: Color(0xFFEBEEF1),
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {}, // end onSubmit
          ),
          SizedBox(height: 23.h),
          Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              children: [
                TextSpan(
                  text: "${tr.didntReceiveTheCode} ",
                  style: AppTextStyle.textStyle(
                    appFontSize: 14.sp,
                    appFontHeight: 21.sp,
                    appFontWeight: FontWeight.w400,
                    color: Color(0xff002237),
                  ),
                ),
                TextSpan(
                  text: " ${tr.resendCode}",
                  style: AppTextStyle.textStyle(
                    appFontSize: 14.sp,
                    appFontHeight: 21.sp,
                    appFontWeight: FontWeight.w400,
                    color: Color(0xff31C5C7),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            child: PrimaryButton(
              title: tr.followUpOnRegistration,
              onPressed: () {
                context.pushReplacementNamed(Routes.homeTap);
              },
            ),
          ),
        ],
      ),
    );
  }
}
