import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/core/routes/routes.dart';
import 'package:methak/features/profile/widgets/custom_rows.dart';
import 'package:methak/features/reservation/widgets/custom_driver.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/resources/icons_resources.dart';
import 'package:methak/shared/widgets/custom_appbar_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
        child: Column(
          children: [
            Container(
              // height: 240.h,
              width: 350.w,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: ColorResources.whiteColor,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: ColorResources.blackColor.withOpacity(0.08),
                    offset: Offset(0.0, 2.0),
                    blurRadius: 4.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  CustomRows(
                    onTap: () {
                      context.pushNamed(Routes.editProfileScreen);
                    },
                    title: tr.editAccount,
                    icon: IconsResources.profileCircle,
                  ),
                  SizedBox(height: 10.h),
                  CustomDriver(),
                  SizedBox(height: 10.h),
                  CustomRows(
                    title: tr.aboutTheApplication,
                    icon: IconsResources.mobile,
                  ),
                  SizedBox(height: 10.h),
                  CustomDriver(),
                  SizedBox(height: 10.h),
                  CustomRows(
                    title: tr.helpAndSupport,
                    icon: IconsResources.help,
                  ),
                  SizedBox(height: 10.h),
                  CustomDriver(),
                  SizedBox(height: 10.h),
                  CustomRows(
                    title: tr.applicationPolicy,
                    icon: IconsResources.legal,
                  ),
                  SizedBox(height: 10.h),
                  CustomDriver(),
                  SizedBox(height: 10.h),
                  CustomRows(
                    title: tr.logOut,
                    icon: IconsResources.logout,
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
