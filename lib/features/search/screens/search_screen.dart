import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/features/search/widgets/custom_text_field_search.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/resources/icons_resources.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            CustomTextFieldSearch(
              icon: IconsResources.search,
              hintText: tr.search,
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Row(
                    spacing: 5.w,
                    children: [
                      SvgPicture.asset(
                        IconsResources.clock,
                        height: 19.87.h,
                        width: 20.h,
                      ),
                      Text(
                       tr.religiousConsultation,
                        style: AppTextStyle.textStyle(
                          appFontSize: 12.sp,
                          appFontHeight: 18.sp,
                          appFontWeight: FontWeight.w400,
                          color: ColorResources.blackColor,
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => Divider(),
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
