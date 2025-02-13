import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';

class CustomRowDisplayDate extends StatelessWidget {
  const CustomRowDisplayDate({
    super.key,
    required this.titleButton,
    this.colorContainer,
  });
  final String titleButton;
  final Color? colorContainer;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "السبت 2 نوفمبر • 12:00 مساءً",
          style: AppTextStyle.textStyle(
            appFontSize: 12.sp,
            appFontHeight: 18.sp,
            appFontWeight: FontWeight.w400,
            color: Color(0xff3F3D56),
          ),
        ),
        Container(
          //height: 22.h,
          //width: 50.w,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 2.h,
          ),
          decoration: BoxDecoration(
            color: colorContainer,
            borderRadius: BorderRadius.circular(
              6.r,
            ),
          ),
          child: Text(
            titleButton,
            style: AppTextStyle.textStyle(
              appFontSize: 12.sp,
              appFontHeight: 18.sp,
              appFontWeight: FontWeight.w400,
              color: ColorResources.whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
