import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';


class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch({
    super.key,
    this.controller,
    this.isService = false,
    this.hintText,
    required this.icon,
  });

  final TextEditingController? controller;
  final bool isService;
  final String? hintText;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isService ? 44.h : 48.h,
      width: 350.w,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: GestureDetector(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: SvgPicture.asset(
                icon,
                height: 24.h,
                width: 254.w,
              ),
            ),
          ),
          hintText: hintText,
          hintStyle: isService
              ? AppTextStyle.textStyle(
                  appFontSize: 14.sp,
                  appFontHeight: 21.sp,
                  appFontWeight: FontWeight.w400,
                  color: Color(0xff292D32))
              : AppTextStyle.textStyle(
                  appFontSize: 12.sp,
                  appFontHeight: 18.sp,
                  appFontWeight: FontWeight.w400,
                  color: Color(0xffBDC1C6)),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              width: 1.w,
              color:isService?ColorResources.blackColor.withOpacity(0.10): Color(0xffBDC1C6),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              width: 1.w,
              color:isService?ColorResources.blackColor.withOpacity(0.10): Color(0xffBDC1C6),
            ),
          ),
          filled: isService? true: false,
          fillColor: Color(0xffFBFBFB),
        ),
      ),
    );
  }
}
