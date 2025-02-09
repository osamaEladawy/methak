import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../classes/text_style.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.textStyle(
        appFontSize: 14.sp,
        color: Color(0xff1E1E1E),
        appFontWeight: FontWeight.w600,
        appFontHeight: 16.94.sp,
      ),
    );

  }
}
