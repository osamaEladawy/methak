import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/shared/classes/text_style.dart';

class ModifyOrCancellationReservation extends StatelessWidget {
  const ModifyOrCancellationReservation({
    super.key,
    required this.title,
    this.colorContainer,
    this.colorText,
    this.onTap,
  });
  final String title;
  final Color? colorContainer;
  final Color? colorText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 40.h,
        width: 110.w,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: colorContainer,
          // ColorResources.primaryColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            width: 1.w,
            color: colorText!,
            // ColorResources.whiteColor,
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyle.textStyle(
              appFontSize: 14.sp,
              appFontHeight: 21.sp,
              appFontWeight: FontWeight.w400,
              color: colorText
              // ColorResources.whiteColor,
              ),
        ),
      ),
    );
  }
}
