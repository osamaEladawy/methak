import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/classes/text_style.dart';
import '../../../shared/resources/color_resources.dart';

class SelectPaymentMethod extends StatelessWidget {
  const SelectPaymentMethod({super.key, required this.title, required this.icon});
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing:10.w,
      children: [
        SvgPicture.asset(
          icon,
          height: 24.h,
          width: 24.w,
        ),
        Text(
          title,
          style: AppTextStyle.textStyle(
            appFontSize: 14.sp,
            appFontHeight: 21.sp,
            appFontWeight: FontWeight.w400,
            color: ColorResources.blackColor,
          ),
        ),
      ],
    );
  }
}
