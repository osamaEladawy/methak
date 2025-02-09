import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/constant/appStrings.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';

ThemeData light = ThemeData(
  fontFamily: AppStrings.madani,
  primaryColor: const Color(0xFF5463FF),
  secondaryHeaderColor: const Color(0xff11233F),
  disabledColor: const Color(0xFFEDEDED),
  canvasColor: const Color(0xff315B41),
  shadowColor: Colors.black,
  focusColor: const Color(0xff4D4D4D),
  scaffoldBackgroundColor: Colors.white,
  brightness: Brightness.light,
  hintColor: const Color(0xFF515151),
  cardColor: Colors.white,
  hoverColor: const Color(0xffD5D7DE),
  dividerColor: const Color(0xFF000000),
  inputDecorationTheme: InputDecorationTheme(
      // contentPadding: EdgeInsets.only(right: 15.w,top: 24.h,bottom: 24.h,left: 15.w),
      //fillColor: Color(0xffF6F7F9),
      fillColor: Colors.transparent,
      filled: true,
      hintStyle: TextStyle(
          fontSize: 13.sp,
          color: const Color(0xffBDBDBD),
          fontWeight: FontWeight.w300),
      errorStyle: TextStyle(
          fontSize: 14.sp,
          color: const Color(0xffD82636),
          fontWeight: AppFontWeight.regular),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide:
            const BorderSide(color: ColorResources.borderColor, width: 1.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide:
            const BorderSide(color: ColorResources.borderColor, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.w),
        borderSide: const BorderSide(color: Color(0xffD82636), width: 1.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.w),
        borderSide: const BorderSide(color: Color(0xff5463FF), width: 1),
      )),
  popupMenuTheme: const PopupMenuThemeData(
      color: Colors.white, surfaceTintColor: Colors.white),
  dialogTheme: const DialogTheme(surfaceTintColor: Colors.white),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500))),
  bottomAppBarTheme: const BottomAppBarTheme(
    surfaceTintColor: Colors.white,
    height: 60,
    padding: EdgeInsets.symmetric(vertical: 5),
  ),
  dividerTheme: const DividerThemeData(thickness: 1, color: Color(0xFF999999)),
  progressIndicatorTheme:
      ProgressIndicatorThemeData(color: ColorResources.primaryColor),
  appBarTheme: AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
  ),
);
