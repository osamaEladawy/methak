import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';

class CustomRowDisplayPrice extends StatelessWidget {
  const CustomRowDisplayPrice({super.key, this.widget});
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          spacing: 3.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "120 ج.م",
              style: AppTextStyle.textStyle(
                appFontSize: 14.sp,
                appFontHeight: 21.sp,
                appFontWeight: FontWeight.w400,
                color: ColorResources.blackColor,
              ),
            ),
            Text(
              tr.viewDetails,
              style: AppTextStyle.textStyle(
                appFontSize: 10.sp,
                appFontHeight: 15.sp,
                appFontWeight: FontWeight.w400,
                color: Color(0xff3F3D56),
              ),
            ),
          ],
        ),
        Spacer(),
        widget == null
            ? Container(
                height: 40.h,
                width: 110.w,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: ColorResources.whiteColor,
                  border: Border.all(
                    width: 1.w,
                    color: ColorResources.primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Text(
                  tr.bookAgain,
                  style: AppTextStyle.textStyle(
                    appFontSize: 14.sp,
                    appFontHeight: 21.sp,
                    appFontWeight: FontWeight.w400,
                    color: ColorResources.primaryColor,
                  ),
                ),
              )
            : widget!
      ],
    );
  }
}
