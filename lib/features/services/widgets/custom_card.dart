import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/shared/classes/text_style.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.colorContainer,
    this.colorText,
    required this.colorBorder,
  });
  final String title;
  final String subtitle;
  final Color? colorContainer;
  final Color? colorText;
  final Color colorBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.w,
      height: 93.h,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: colorContainer,
        border: Border.all(
          width: 1.w,
          color: colorBorder,
          // Color(0xffBFEDEE),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 5.h,
        children: [
          Text(
            title,
            style: AppTextStyle.textStyle(
              appFontSize: 16.sp,
              appFontHeight: 24.sp,
              appFontWeight: FontWeight.bold,
              color: Color(0xff114546),
            ),
          ),
          Text(
            subtitle,
            style: AppTextStyle.textStyle(
              appFontSize: 16.sp,
              appFontHeight: 24.sp,
              appFontWeight: FontWeight.w100,
              color: Color(0xff114546),
            ),
          ),
        ],
      ),
    );
  }
}
