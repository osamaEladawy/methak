import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/classes/text_style.dart';
import '../../../shared/resources/color_resources.dart';

class DisplayInfoRequestService extends StatelessWidget {
  const DisplayInfoRequestService({
    super.key,
    required this.title,
    required this.price,
    this.isTotal = false,
  });

  final String title;
  final String price;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:isTotal? AppTextStyle.textStyle(
            appFontSize: 14.sp,
            appFontHeight: 21.sp,
            appFontWeight: FontWeight.bold,
            color: ColorResources.blackColor,
          ):AppTextStyle.textStyle(
            appFontSize: 14.sp,
            appFontHeight: 21.sp,
            appFontWeight: FontWeight.w400,
            color: ColorResources.blackColor,
          ),
        ),
        Text(
          price,
          style:isTotal?AppTextStyle.textStyle(
            appFontSize: 13.sp,
            appFontHeight: 24.36.sp,
            appFontWeight: FontWeight.w700,
            color: ColorResources.blackColor,
          ): AppTextStyle.textStyle(
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
