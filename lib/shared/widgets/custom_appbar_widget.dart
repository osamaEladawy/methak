import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/color_resources.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorResources.primaryColor,
      centerTitle: true,
      title: Text(
        title,
        style: AppTextStyle.textStyle(
          appFontSize: 16.sp,
          appFontHeight: 24.sp, 
          appFontWeight: FontWeight.w400,
          color: ColorResources.whiteColor,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r),
        ),
      ),
      leading: IconButton(
        onPressed: () async {
          context.maybePop();
        },
        icon: Icon(
          Icons.arrow_back,
          size: 24,
          color: ColorResources.whiteColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none_rounded,
            size: 24,
            color: ColorResources.whiteColor,
          ),
        ),
      ],
    );
  }
}
