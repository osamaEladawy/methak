import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/core/classes/responsive_screen.dart';
import 'package:methak/core/functions/check_for_current_language.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/features/reservation/widgets/custom_driver.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/resources/icons_resources.dart';
import 'package:methak/shared/resources/image_resources.dart';
import 'package:methak/shared/widgets/primary_button.dart';

class DetailsLawyerServiceScreen extends StatelessWidget {
  const DetailsLawyerServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return Scaffold(
      bottomNavigationBar: BottomSheet(
          backgroundColor: Colors.white,
          enableDrag: false,
          showDragHandle: false,
          elevation: 10,
          shadowColor: ColorResources.blackColor.withOpacity(0.05),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          onClosing: () {},
          builder: (context) {
            return Container(
              height: 95.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: ColorResources.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
                boxShadow: [
                  BoxShadow(
                      color: ColorResources.blackColor.withOpacity(0.05),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: Offset(0, -5)),
                ],
              ),
              child: PrimaryButton(
                title: tr.bookAnAppointment,
                onPressed: () {},
              ),
            );
          }),
      body: SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: ResponsiveScreen.width,
            minWidth: ResponsiveScreen.width,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      color: ColorResources.whiteColor,
                      child: Image.asset(
                        ImagesResources.infoLawyer,
                        height: 302.h,
                        width: 390.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                context.maybePop();
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 10.h),
                                child: SvgPicture.asset(
                                  IconsResources.arrowRight,
                                  color: ColorResources.blackColor,
                                  height: 24.h,
                                  width: 24.w,
                                ),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              child: SvgPicture.asset(
                                IconsResources.notification,
                                height: 24.h,
                                width: 24.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        spacing: 8.h,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "مستشار عمر عبدالله",
                            style: AppTextStyle.textStyle(
                                appFontSize: 14.sp,
                                appFontHeight: 21.sp,
                                appFontWeight: FontWeight.w400,
                                color: ColorResources.primaryColor),
                          ),
                          Text(
                            "مستشار في القانون العام / الجنائي",
                            style: AppTextStyle.textStyle(
                              appFontSize: 12.sp,
                              appFontHeight: 18.sp,
                              appFontWeight: FontWeight.w400,
                              color: Color(0xff3F3D56),
                            ),
                          ),
                          Row(
                            spacing: 5.w,
                            children: [
                              Icon(Icons.star, color: Color(0xffDEB754)),
                              Text(
                                "4.5",
                                style: AppTextStyle.textStyle(
                                  appFontSize: 14.sp,
                                  appFontHeight: 21.sp,
                                  appFontWeight: FontWeight.w400,
                                  color: ColorResources.blackColor,
                                ),
                              ),
                              Text(
                                "1,411 مراجعة",
                                style: AppTextStyle.textStyle(
                                  appFontSize: 12.sp,
                                  appFontHeight: 18.sp,
                                  appFontWeight: FontWeight.w400,
                                  color: Color(0xff828F9C),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "120ج.م",
                        style: AppTextStyle.textStyle(
                          appFontSize: 23.sp,
                          appFontHeight: 34.94.sp,
                          appFontWeight: FontWeight.w400,
                          color: Color(0xff114546),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                CustomDriver(),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    tr.aboutMe,
                    style: AppTextStyle.textStyle(
                      appFontSize: 18.sp,
                      appFontHeight: 27.sp,
                      appFontWeight: FontWeight.w400,
                      color: ColorResources.blackColor,
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
                    style: AppTextStyle.textStyle(
                      appFontSize: 14.sp,
                      appFontHeight: 21.sp,
                      appFontWeight: FontWeight.w400,
                      color: Color(0xff686868),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                CustomDriver(),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    "${tr.whatDidTheySayAboutMe}${isArabic ? "؟" : "?"}",
                    style: AppTextStyle.textStyle(
                      appFontSize: 18.sp,
                      appFontHeight: 27.sp,
                      appFontWeight: FontWeight.w400,
                      color: ColorResources.blackColor,
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                SizedBox(
                  height: 133.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 330.w,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: ColorResources.whiteColor,
                          border: Border.all(
                            width: 1.w,
                            color: ColorResources.blackColor.withOpacity(0.05),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 5.h,
                          children: [
                            Row(
                              spacing: 10.w,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    ImagesResources.review,
                                    height: 50.h,
                                    width: 50.w,
                                  ),
                                ),
                                Column(
                                  spacing: 5.h,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Sara Smith",
                                      style: AppTextStyle.textStyle(
                                        appFontSize: 14.sp,
                                        appFontHeight: 21.sp,
                                        appFontWeight: FontWeight.w400,
                                        color: ColorResources.blackColor,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        ...List.generate(5, (index) {
                                          return Icon(
                                            index == 5
                                                ? Icons.star_border
                                                : Icons.star,
                                            color: index == 5
                                                ? null
                                                : Color(0xffDEB754),
                                            size: 16,
                                          );
                                        })
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              "لوريم إيبسوم هو نص مؤقت يستخدم في التصميم والنشر لإظهار شكل الوثيقة أو الخط دون الاعتماد على محتوى معنوي. قد يستخدم لوريم إيبسوم كنص بديل قبل وضع النص ",
                              style: AppTextStyle.textStyle(
                                appFontSize: 12.sp,
                                appFontHeight: 18.sp,
                                appFontWeight: FontWeight.w400,
                                color: Color(0xff7E848E),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 10.w),
                    itemCount: 3,
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
