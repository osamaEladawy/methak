import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/shared/classes/text_style.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final void Function()? onTap;
  final void Function()? suffixIconOnTap;
  final ValueChanged<String> valueChanged;
  final IconData? icon;
  final IconData? suffixIcon;
  final bool? obscureText;
  final String image;
  final void Function()? onPressed;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;

  const CustomTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.labelText,
    this.onTap,
    this.icon,
    this.obscureText,
    required this.valueChanged,
    this.suffixIconOnTap,
    this.suffixIcon,
    this.image = "",
    this.onPressed,
    this.prefixIcon,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText == null || obscureText == false ? true : false,
        validator: (value) {
          if (value!.isEmpty) {
            return "please entre this text field";
          } else {
            return null;
          }
        },
        controller: controller,
        onFieldSubmitted: (value) {
          return valueChanged(value);
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(right: 8.w, left: 8.w),
          hintStyle: AppTextStyle.textStyle(
            appFontSize: 12.sp,
            appFontWeight: FontWeight.w400,
            appFontHeight: 14.52.sp,
            color: Colors.black.withOpacity(0.50),
          ),
          // suffixIcon: IconButton(
          //   onPressed: suffixIconOnTap,
          //   icon: Icon(
          //     suffixIcon,
          //     color: obscureText == true ? Colors.blue : null,
          //   ),
          // ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Color(0xff000000),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Color(0xff000000),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Color(0xff000000),
            ),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          labelText: labelText,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
