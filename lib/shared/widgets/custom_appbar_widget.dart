import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/features/reservation/widgets/custom_bottom_model_sheet.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/resources/icons_resources.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    this.title = '',
    this.widget,
    this.isEditConsultationsScreen = false,
  });
  final String title;
  final Widget? widget;
  final bool isEditConsultationsScreen;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: widget != null ? 0 : null,
      backgroundColor: ColorResources.primaryColor,
      centerTitle: widget == null ? true : false,
      title: widget == null
          ? Text(
              title,
              style: AppTextStyle.textStyle(
                appFontSize: 16.sp,
                appFontHeight: 24.sp,
                appFontWeight: FontWeight.w400,
                color: ColorResources.whiteColor,
              ),
            )
          : widget,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r),
        ),
      ),
      leading: widget == null
          ? GestureDetector(
              onTap: () async {
                context.maybePop();
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: SvgPicture.asset(
                  IconsResources.arrowRight,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            )
          : SizedBox(),
      actions: [
        isEditConsultationsScreen
            ? GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return CustomBottomModelSheet();
                      });
                },
                child: Container(
                  height: 34.h,
                  width: 110.w,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  padding: EdgeInsets.symmetric(vertical: 5.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: ColorResources.whiteColor,
                    border: Border.all(
                      color: Color(0xffF7C4C0),
                      width: 1.w,
                    ),
                  ),
                  child: Text(
                    tr.cancellationOfReservation,
                    style: AppTextStyle.textStyle(
                        appFontSize: 16.sp,
                        appFontHeight: 24.sp,
                        appFontWeight: FontWeight.w400,
                        color: Color(0xffFF0000)),
                  ),
                ),
              )
            : IconButton(
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
