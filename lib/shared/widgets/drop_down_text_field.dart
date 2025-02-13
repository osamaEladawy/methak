// ignore_for_file: deprecated_member_use

import 'package:dropdown_textfield/dropdown_textfield.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/resources/icons_resources.dart';

class CustomDropDownTextField extends StatelessWidget {
  final dynamic controller;
  final dynamic initialValue;
  final String? hintText;
  final void Function(dynamic)? onChanged;
  final void Function()? onTap;
  final List<String>? items;
  const CustomDropDownTextField({
    super.key,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.hintText,
    this.onTap,
    this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(),
      height: 44.h,
      child: DropDownTextField(
        clearOption: false,
        dropDownIconProperty: IconProperty(color: Color(0xff292D32)),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        textStyle: AppTextStyle.textStyle(
          appFontSize: 14.sp,
          appFontHeight: 21.sp,
          appFontWeight: FontWeight.w400,
          color: ColorResources.blackColor,
        ),
        initialValue: initialValue,
        controller: controller,
        //clearIconProperty: IconProperty(color: Colors.green),
        //searchTextStyle: const TextStyle(color: Colors.red),
        textFieldDecoration: InputDecoration(
          fillColor: ColorResources.whiteColor,
          filled: true,
          hintStyle: AppTextStyle.textStyle(
            appFontSize: 14.sp,
            appFontHeight: 21.sp,
            appFontWeight: FontWeight.w400,
            color: ColorResources.blackColor,
          ),
          //suffixIcon: SizedBox(),
          suffixIcon: SvgPicture.asset(
            IconsResources.arrowDown,
            height: 16.h,
            width: 16.w,
          ),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(
              color: ColorResources.blackColor.withOpacity(0.12),
              width: 1.w,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(
              color: ColorResources.blackColor.withOpacity(0.12),
              width: 1.w,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(
              color: ColorResources.blackColor.withOpacity(0.12),
              width: 1.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(
              color: ColorResources.blackColor.withOpacity(0.12),
              width: 1.w,
            ),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Required field";
          } else {
            return null;
          }
        },
        dropDownItemCount: items!.length,
        dropDownList: [
          ...List.generate(items!.length, (index) {
            return DropDownValueModel(
              name: items![index],
              value: "$index",
            );
          })
        ],
        onChanged: onChanged,
      ),
    );
  }
}
