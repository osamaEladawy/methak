import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/features/onboard/cubit/onboard_cubit.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:methak/shared/widgets/primary_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardCubit, OnboardState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomAppBar(
            height: 95.h,
            color: ColorResources.whiteColor,
            child: Container(
              height: 95.h,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: ColorResources.blackColor.withOpacity(0.05),
                    width: 1.w,
                  ),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 170.w,
                    child: PrimaryButton(
                      onPressed: () {
                        OnboardCubit.instance.nextPage();
                      },
                      title: tr.next,
                    ),
                  ),
                  SmoothPageIndicator(
                    controller:
                        OnboardCubit.instance.controller, // PageController
                    count: OnboardCubit.instance.onBoarding.length,
                    effect: ExpandingDotsEffect(
                      dotHeight: 8.h,
                      // dotWidth: 40.w,
                      dotColor: Color(0xFFD9D9D9),
                      activeDotColor: ColorResources.primaryColor,
                    ), // your preferred effect
                    onDotClicked: (index) {},
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: PageView.builder(
                onPageChanged: (page) {
                  OnboardCubit.instance.changeIndex(page);
                },
                //physics: NeverScrollableScrollPhysics(),
                itemCount: OnboardCubit.instance.onBoarding.length,
                controller: OnboardCubit.instance.controller,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        OnboardCubit.instance.onBoarding[index].image!,
                        width: 300.w,
                        height: 306.5.h,
                      ),
                      SizedBox(height: 37.h),
                      Text(
                        OnboardCubit.instance.onBoarding[index].title!,
                        style: AppTextStyle.textStyle(
                          appFontSize: 23.sp,
                          appFontHeight: 34.94.sp,
                          appFontWeight: FontWeight.w400,
                          color: ColorResources.blackColor,
                        ),
                      ),
                      SizedBox(height: 13.h),
                      Text(
                        OnboardCubit.instance.onBoarding[index].description!,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.textStyle(
                          appFontSize: 14.sp,
                          appFontHeight: 21.sp,
                          appFontWeight: FontWeight.w400,
                          color: ColorResources.greyColor,
                        ),
                      ),
                    ],
                  );
                }),
          ),
        );
      },
    );
  }
}
