import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/shared/classes/text_style.dart';

class SelectTypeConsultation extends StatelessWidget {
  const SelectTypeConsultation({
    super.key,
    required this.type,
    required this.icon,
    this.colorContainer,
    this.colorText,
    required this.colorBorder,
    this.onTap,
  });
  final String type;
  final String icon;
  final Color? colorContainer;
  final Color? colorText;
  final Color colorBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: colorContainer,
          // ColorResources.primaryColor,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Row(
          spacing: 10.w,
          children: [
            if (icon.isNotEmpty)
              SvgPicture.asset(
                icon,
                height: 24.h,
                width: 24.w,
                color: colorText,
              ),
            Text(
              type,
              style: AppTextStyle.textStyle(
                appFontSize: 16.sp,
                appFontHeight: 24.sp,
                appFontWeight: FontWeight.w400,
                color: colorText, // ColorResources.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
