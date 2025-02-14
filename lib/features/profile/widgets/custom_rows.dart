import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/icons_resources.dart';

class CustomRows extends StatelessWidget {
  const CustomRows({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });
  final String title;
  final String icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(width: 13.w),
            Text(
              title,
              style: AppTextStyle.textStyle(
                appFontSize: 16.sp,
                appFontHeight: 24.sp,
                appFontWeight: FontWeight.w400,
                color: Color(0xff002237),
              ),
            ),
            Spacer(),
            SvgPicture.asset(
              IconsResources.arrowRights,
              height: 24.h,
              width: 24.w,
            )
          ],
        ),
      ),
    );
  }
}
