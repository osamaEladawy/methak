import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/classes/responsive_screen.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/core/routes/routes.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/resources/icons_resources.dart';
import 'package:methak/shared/resources/image_resources.dart';
import 'package:methak/shared/widgets/custom_appbar_widget.dart';

import '../../search/widgets/custom_text_field_search.dart';

class DisplayServiceScreen extends StatelessWidget {
  const DisplayServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: CustomAppBarWidget(
          title: tr.legalConsultations,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: Column(
          children: [
            CustomTextFieldSearch(
              isService: true,
              hintText: tr.sortBy,
              icon: IconsResources.arrowUpDown,
            ),
            SizedBox(height: 16.24.h),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        context.pushNamed(Routes.detailsLawyerServiceScreen);
                      },
                      child: Container(
                        height: 113.h,
                        width: 350.w,
                        padding: EdgeInsets.only(left: 10.w),
                        decoration: BoxDecoration(
                          color: ColorResources.primaryColor,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Container(
                          height: 113.h,
                          width: 350.w,
                          padding: EdgeInsets.only(left: 10.w),
                          decoration: BoxDecoration(
                            color: ColorResources.whiteColor,
                            borderRadius: BorderRadius.circular(12.r),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    ColorResources.blackColor.withOpacity(0.10),
                                spreadRadius: 2.0,
                                blurRadius: 6.0,
                                offset: Offset(0.0, 4.0),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                ImagesResources.lawyer,
                                height: 113.h,
                                width: 81.w,
                              ),
                              SizedBox(width: 12.w),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxWidth: ResponsiveScreen.width - 165,
                                  minWidth: ResponsiveScreen.width - 165,
                                ),
                                child: Column(
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
                                        Icon(Icons.star,
                                            color: Color(0xffDEB754)),
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
                                    Row(
                                      // spacing: 5.w,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "120ج.م",
                                          style: AppTextStyle.textStyle(
                                            appFontSize: 18.sp,
                                            appFontHeight: 27.sp,
                                            appFontWeight: FontWeight.w400,
                                            color: ColorResources.blackColor,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 76.w,
                                          height: 28.h,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10.w,
                                            vertical: 2.h,
                                          ),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Color(0xffE0F6F7),
                                            borderRadius:
                                                BorderRadius.circular(6.r),
                                            border: Border.all(
                                              width: 1.w,
                                              color: Color(0xffBFEDEE),
                                            ),
                                          ),
                                          child: Text(
                                            tr.details,
                                            style: AppTextStyle.textStyle(
                                              appFontSize: 16.sp,
                                              appFontHeight: 24.sp,
                                              appFontWeight: FontWeight.w400,
                                              color: Color(0xff31C5C7),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 13.h),
                  itemCount: 10),
            ),
          ],
        ),
      ),
    );
  }
}
