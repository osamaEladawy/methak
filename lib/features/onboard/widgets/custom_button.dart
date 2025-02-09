import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.image = '',
    this.colorContainer = ColorResources.primaryColor,
    this.colorText = ColorResources.whiteColor,
    this.onTap,
    this.isLogin = false,
  });
  final String title;
  final String image;
  final Color colorContainer;
  final Color colorText;
  final void Function()? onTap;
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: isLogin ? 51.h : 56.h,
        width: isLogin ? 264.w : 342.w,
        alignment: isLogin ? Alignment.center : Alignment.center,
        padding: isLogin
            ? EdgeInsets.zero
            : EdgeInsets.symmetric(vertical: 16.h, horizontal: 80.w),
        decoration: BoxDecoration(
          color: colorContainer,
          borderRadius: BorderRadius.circular(25.r),
          border: Border.all(
            color: ColorResources.primaryColor,
            width: 1.w,
          ),
        ),
        child: isLogin
            ? Text(
                title,
                style: AppTextStyle.textStyle(
                  appFontSize: 16.sp,
                  appFontHeight: 19.36.sp,
                  appFontWeight: FontWeight.w700,
                  color: colorText,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (image != '')
                    SvgPicture.asset(
                      image,
                      color: colorText,
                    ),
                  SizedBox(width: 8.w),
                  Text(
                    title,
                    style: AppTextStyle.textStyle(
                      appFontSize: 16.sp,
                      appFontHeight: 19.36.sp,
                      appFontWeight: FontWeight.w700,
                      color: colorText,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
