import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    this.onPressed,
    this.style,
  });

  final String title;
  final void Function()? onPressed;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50.h,
      minWidth: 350.w,
      color: ColorResources.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyle.textStyle(
          appFontSize: 16.sp,
          appFontHeight: 24.sp,
          appFontWeight: FontWeight.w400,
          color: ColorResources.whiteColor,
        ),
      ),
    );
  }
}
