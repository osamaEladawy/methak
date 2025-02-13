import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/widgets/custom_appbar_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: CustomAppBarWidget(
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${tr.hello} اسامه 👋",
                style: AppTextStyle.textStyle(
                  appFontSize: 18.sp,
                  appFontHeight: 27.34.sp,
                  appFontWeight: FontWeight.w400,
                  color: ColorResources.whiteColor,
                ),
              ),
              Text(
                tr.welcomeToTheElectronic,
                style: AppTextStyle.textStyle(
                  appFontSize: 14.sp,
                  appFontHeight: 21.sp,
                  appFontWeight: FontWeight.w400,
                  color: ColorResources.whiteColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
