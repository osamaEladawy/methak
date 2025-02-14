import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/features/auth/widgets/custom_text_field_auth.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/resources/icons_resources.dart';

class CustomFieldPhoneNumber extends StatelessWidget {
  final ValueChanged<int> valueChanged;
  final String image;
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final bool isEditProfile;
  const CustomFieldPhoneNumber({
    super.key,
    required this.valueChanged,
    this.image = '',
    this.hintText,
    this.labelText,
    this.controller,
    this.isEditProfile = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFieldAuth(
            isChangeFont: true,
            isEditProfile: isEditProfile,
            hintText: hintText,
            labelText: labelText,
            keyboardType: TextInputType.phone,
            onChanged: (val) {},
            image: image,
            controller: controller,
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          height: 52.h,
          width: 120.w,
          decoration: BoxDecoration(
            color: ColorResources.whiteColor,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: ColorResources.borderColor,
              width: 1.w,
            ),
          ),
          child: Container(
            // width: 100.w,
            // height: 48.h,
            alignment: Alignment.center,
            child: CountryCodePicker(
              onChanged: print,
              builder: (countryCode) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (!isEditProfile)
                      SvgPicture.asset(
                        IconsResources.arrowUp,
                        height: 24.h,
                        width: 24.w,
                      ),
                    SizedBox(width: 3.w),
                    Text(
                      '$countryCode',
                      style: isEditProfile
                          ? AppTextStyle.textStyle(
                              isAlexandria: true,
                              appFontSize: 13.sp,
                              appFontHeight: 15.65.sp,
                              appFontWeight: FontWeight.w500,
                              color: Color(0xff030103),
                            )
                          : AppTextStyle.textStyle(
                              isQuicksand: true,
                              appFontSize: 16.sp,
                              appFontHeight: 22.4.sp,
                              appFontWeight: FontWeight.w400,
                              color: Color(0xffC1C9D3)),
                    ),
                    SizedBox(width: 5.w),
                    Image.asset(
                      countryCode!.flagUri!,
                      package: 'country_code_picker',
                      width: 28.0.w,
                      height: 21.h,
                    ),
                  ],
                );
              },
              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
              initialSelection: '+20',
              favorite: ['+20', '+966'],
              // optional. Shows only country name and flag
              showCountryOnly: true,
              // optional. Shows only country name and flag when popup is closed.
              showOnlyCountryWhenClosed: false,
              // optional. aligns the flag and the Text left
              alignLeft: false,
              countryFilter: ['+20', '+966'],
              hideSearch: false,
              textStyle: TextStyle(
                  fontSize: 14,
                  color: Color(0xff414141),
                  fontWeight: FontWeight.w500),
              dialogSize: Size(50, 300),
            ),
          ),
        ),
      ],
    );
  }
}
