import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/classes/text_style.dart';

class CustomButtonsBottomSheet extends StatelessWidget {
  const CustomButtonsBottomSheet({
    super.key,
    this.onTap,
    this.colorContainer,
    this.colorText,
    required this.title,
  });

  final void Function()? onTap;
  final Color? colorContainer;
  final Color? colorText;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 170.w,
        height: 40.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: colorContainer,
            border: Border.all(width: 1.w, color: colorText!)
            //ColorResources.primaryColor,
            ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyle.textStyle(
            appFontSize: 16.sp,
            appFontHeight: 24.sp,
            appFontWeight: FontWeight.w400,
            color: colorText,
          ),
        ),
      ),
    );
  }
}
