import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/functions/translate.dart';
import '../../../shared/classes/text_style.dart';
import '../../../shared/resources/color_resources.dart';
import '../../../shared/widgets/custom_appbar_widget.dart';
import '../widgets/custom_bottom_model_sheet.dart';
import '../widgets/custom_buttons_bottom_sheet.dart';

class ServiceRequestScreen extends StatelessWidget {
  const ServiceRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: CustomAppBarWidget(
          title: tr.serviceRequest,
        ),
      ),
      bottomNavigationBar: BottomSheet(
          backgroundColor: Colors.white,
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
              padding:
              EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
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
              child: Row(
                spacing: 10.w,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtonsBottomSheet(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return CustomBottomModelSheet(isConfirmRequest: true,);
                          });
                    },
                    title: tr.confirmOrder,
                    colorContainer: ColorResources.primaryColor,
                    colorText: ColorResources.whiteColor,
                  ),
                  Text(
                    "120ج.م",
                    style: AppTextStyle.textStyle(
                      appFontSize: 18.sp,
                      appFontHeight: 27.sp,
                      appFontWeight: FontWeight.w400,
                      color: ColorResources.blackColor,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
