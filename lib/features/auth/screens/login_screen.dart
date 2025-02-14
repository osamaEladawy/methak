import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/features/auth/cubit/auth_cubit.dart';
import 'package:methak/features/auth/screens/otp_screen.dart';
import 'package:methak/features/auth/widgets/custom_field_phone_number.dart';
import 'package:methak/features/auth/widgets/custom_text_field_auth.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/resources/icons_resources.dart';
import 'package:methak/shared/widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 50.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr.welcome,
                    style: AppTextStyle.textStyle(
                      appFontSize: 23.sp,
                      appFontHeight: 34.94.sp,
                      appFontWeight: FontWeight.w400,
                      color: ColorResources.blackColor,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text.rich(
                    textAlign: TextAlign.start,
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "${tr.byCreatingAnAccount} ",
                          style: AppTextStyle.textStyle(
                            appFontSize: 14.sp,
                            appFontHeight: 21.sp,
                            appFontWeight: FontWeight.w400,
                            color: Color(0xff5C5C5C),
                          ),
                        ),
                        TextSpan(
                          text: " ${tr.userAgree} ",
                          style: AppTextStyle.textStyle(
                            appFontSize: 14.sp,
                            appFontHeight: 21.sp,
                            appFontWeight: FontWeight.w400,
                            color: Color(0xff31C5C7),
                          ),
                        ),
                        TextSpan(
                          text: "${tr.and} ",
                          style: AppTextStyle.textStyle(
                            appFontSize: 14.sp,
                            appFontHeight: 21.sp,
                            appFontWeight: FontWeight.w400,
                            color: Color(0xff5C5C5C),
                          ),
                        ),
                        TextSpan(
                          text: " ${tr.privacyPolicy} ",
                          style: AppTextStyle.textStyle(
                            appFontSize: 14.sp,
                            appFontHeight: 21.sp,
                            appFontWeight: FontWeight.w400,
                            color: Color(0xff31C5C7),
                          ),
                        ),
                        TextSpan(
                          text: "${tr.our} ",
                          style: AppTextStyle.textStyle(
                            appFontSize: 14.sp,
                            appFontHeight: 21.sp,
                            appFontWeight: FontWeight.w400,
                            color: Color(0xff5C5C5C),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFieldAuth(
                    image: IconsResources.profile,
                    hintText: tr.nameHere,
                  ),
                  SizedBox(height: 14.h),
                  CustomFieldPhoneNumber(
                    hintText: "01012804721",
                    valueChanged: (int value) {},
                  ),
                  SizedBox(height: 14.h),
                  CustomTextFieldAuth(
                    image: IconsResources.userCircle,
                    hintText: tr.invitationCode,
                  ),
                  SizedBox(height: 20.h),
                  PrimaryButton(
                    title: tr.login,
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return OtpScreen();
                          });
                    },
                  ),
                  SizedBox(height: 35.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 125.w,
                        child: Divider(
                          color: Color(0xff222227),
                          height: 1.h,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Text(
                          tr.or,
                          style: AppTextStyle.textStyle(
                            isNoto: true,
                            appFontSize: 16.sp,
                            appFontHeight: 30.35.sp,
                            appFontWeight: FontWeight.w500,
                            color: Color(0xff222227),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 125.w,
                        child: Divider(
                          color: Color(0xff222227),
                          height: 1.h,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      tr.loginViaSocialNetworks,
                      style: AppTextStyle.textStyle(
                        isNoto: true,
                        appFontSize: 16.sp,
                        appFontHeight: 30.35.sp,
                        appFontWeight: FontWeight.w500,
                        color: Color(0xff222227),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 30.w,
                    children: [
                      SvgPicture.asset(
                        IconsResources.google,
                        height: 40.h,
                        width: 40.w,
                      ),
                      SvgPicture.asset(
                        IconsResources.x,
                        height: 40.h,
                        width: 40.w,
                      ),
                      SvgPicture.asset(
                        IconsResources.apple,
                        height: 40.h,
                        width: 40.w,
                      ),
                      SvgPicture.asset(
                        IconsResources.face,
                        height: 40.h,
                        width: 40.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
