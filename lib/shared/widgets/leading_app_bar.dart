import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/shared/extentions/navigations.dart';

class LeadingAppBar extends StatelessWidget {
  const LeadingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 12.h,
        ),
        child: Icon(
          Icons.keyboard_arrow_right,
          size: 30,
        ),
      ),
    );
  }
}
