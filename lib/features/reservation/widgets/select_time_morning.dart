import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/shared/classes/text_style.dart';

class SelectTimeMorning extends StatelessWidget {
  const SelectTimeMorning(
      {super.key, required this.title, this.colorContainer});
  final String title;
  final Color? colorContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37.5.h,
      width: 80.w,
      alignment: Alignment.center,
      //padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: colorContainer,
        border: Border.all(
          width: 1.w,
          color: Color(0xffBFEDEE),
        ),
      ),
      child: Text(
        title,
        style: AppTextStyle.textStyle(
          appFontSize: 16.sp,
          appFontHeight: 24.sp,
          appFontWeight: FontWeight.w400,
          color: Color(0xff114546),
        ),
      ),
    );
  }
}
