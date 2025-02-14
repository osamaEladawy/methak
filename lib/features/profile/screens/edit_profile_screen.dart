import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/features/auth/widgets/custom_field_phone_number.dart';
import 'package:methak/features/auth/widgets/custom_text_field_auth.dart';
import 'package:methak/shared/resources/icons_resources.dart';
import 'package:methak/shared/widgets/custom_appbar_widget.dart';
import 'package:methak/shared/widgets/primary_button.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: CustomAppBarWidget(
          title: tr.serviceRequest,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 36.h),
        child: Column(
          children: [
            Container(
              height: 44.94.h,
              width: 44.91.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: Color(0xffF5F5F5),
              ),
              alignment: Alignment.center,
              child: SvgPicture.asset(
                IconsResources.editLine,
                height: 23.45.h,
                width: 23.43.w,
              ),
            ),
            SizedBox(height: 20.h),
            CustomTextFieldAuth(
              isEditProfile: true,
              hintText: tr.nameHere,
            ),
            SizedBox(height: 20.h),
            CustomFieldPhoneNumber(
              isEditProfile: true,
              hintText: tr.phoneNumber,
              valueChanged: (int value) {},
            ),
            SizedBox(height: 20.h),
            CustomTextFieldAuth(
              isEditProfile: true,
              hintText: tr.email,
              image: IconsResources.gmail,
            ),
            Spacer(),
            PrimaryButton(
              title: tr.save,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
