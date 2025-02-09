import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';

class CustomTextFieldAuth extends StatelessWidget {
  const CustomTextFieldAuth({
    super.key,
    this.hintText,
    this.controller,
    this.onTap,
    this.obscureText,
    this.onClickSuffixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.image = '',
    this.labelText,
    this.onChanged,
    this.isChangeFont = false,
  });
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final void Function()? onTap;
  final bool? obscureText;
  final void Function()? onClickSuffixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final String image;
  final void Function(String)? onChanged;
  final bool isChangeFont;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.only(top: 12.h, bottom: 12.h, right: 16.w, left: 16.w),
          suffixIcon: GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12.h,
                horizontal: 12.w,
              ),
              child: image.isNotEmpty
                  ? SvgPicture.asset(
                      image,
                      height: 24.h,
                      width: 24.w,
                    )
                  : null,
            ),
          ),
          hintText: hintText,
          hintStyle: AppTextStyle.textStyle(
            isQuicksand: isChangeFont,
            appFontSize: 16.sp,
            appFontHeight: 24.sp,
            appFontWeight: FontWeight.w400,
            color: Color(0xffC1C9D3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              width: 1.w,
              color: ColorResources.borderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              width: 1.w,
              color: ColorResources.borderColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              width: 1.w,
              color: ColorResources.borderColor,
            ),
          ),
          filled: true,
          fillColor: ColorResources.whiteColor,
        ),
      ),
    );
  }
}
