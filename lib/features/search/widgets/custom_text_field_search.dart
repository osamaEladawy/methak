import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/shared/classes/text_style.dart';

import '../../../shared/resources/icons_resources.dart';

class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch({super.key, this.controller});
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      width: 350.w,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: GestureDetector(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: SvgPicture.asset(
                IconsResources.search,
                height: 24.h,
                width: 254.w,
              ),
            ),
          ),
          hintText: "بحث",
          hintStyle: AppTextStyle.textStyle(
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
              color: Color(0xffBDC1C6),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              width: 1.w,
              color: Color(0xffBDC1C6),
            ),
          ),
        ),
      ),
    );
  }
}
