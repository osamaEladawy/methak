import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/shared/widgets/custom_appbar_widget.dart';

class DisplayServiceScreen extends StatelessWidget {
  const DisplayServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: CustomAppBarWidget(
          title: tr.legalConsultations,
        ),
      ),
    );
  }
}
