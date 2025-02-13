import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/classes/responsive_screen.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';

class CustomRowDisplayTypeConsultation extends StatelessWidget {
  const CustomRowDisplayTypeConsultation({
    super.key,
    required this.titleDotGreen,
    this.widget,
  });
  final String titleDotGreen;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return Row(
      children: [
        Container(
          height: 53.19.sp,
          width: 63.83.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            color: Color(0xffEEEEEE),
            border: Border.all(
              color: Color(0xffE6E6E6),
              width: 1.w,
            ),
          ),
        ),
        SizedBox(width: 10.w),
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: ResponsiveScreen.width - 120,
            maxWidth: ResponsiveScreen.width - 120,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 7.h,
            children: [
              Text(
                tr.generalLegalAdvice,
                style: AppTextStyle.textStyle(
                  appFontSize: 14.sp,
                  appFontHeight: 21.sp,
                  appFontWeight: FontWeight.w400,
                  color: ColorResources.blackColor,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 70.w,
                    height: 25.h,
                    alignment: Alignment.center,
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                    decoration: BoxDecoration(
                      color: Color(0xffEAF9F9),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                            color: Color(0xff1B763B),
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          titleDotGreen,
                          style: AppTextStyle.textStyle(
                            appFontSize: 14.sp,
                            appFontHeight: 21.sp,
                            appFontWeight: FontWeight.w400,
                            color: Color(0xff114546),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (widget != null) Spacer(),
                  if (widget != null) widget!
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
