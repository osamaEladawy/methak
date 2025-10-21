import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/functions/translate.dart';
import 'package:methak/features/home/cubit/home_cubit.dart';
import 'package:methak/shared/classes/text_style.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/color_resources.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.primaryColor,
        toolbarHeight: 84.h,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${tr.hello} أسامة 👋",
                style: AppTextStyle.textStyle(
                  appFontSize: 18.sp,
                  appFontHeight: 27.34.sp,
                  appFontWeight: FontWeight.w400,
                  color: ColorResources.whiteColor,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                tr.welcomeToTheElectronic,
                style: AppTextStyle.textStyle(
                  appFontSize: 14.sp,
                  appFontHeight: 21.sp,
                  appFontWeight: FontWeight.w400,
                  color: ColorResources.whiteColor,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_rounded,
              size: 24,
              color: ColorResources.whiteColor,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100.h),
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 100.h,
                    color: ColorResources.primaryColor,
                  ),
                  Positioned(
                    bottom: -100.h,
                    child: SizedBox(
                      height: 170.h,
                      width: 370.w,
                      child: PageView.builder(
                        controller: HomeCubit.instance.controller,
                        itemCount: HomeCubit.instance.banners.length,
                        onPageChanged: (page) {
                          HomeCubit.instance.changeIndex(page);
                        },
                        itemBuilder: (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(12.r),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 8.w),
                              padding: EdgeInsets.only(bottom: 10.h),
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 6,
                                      spreadRadius: 2,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage(
                                          HomeCubit.instance.banners[index]))),
                              child: SmoothPageIndicator(
                                controller: HomeCubit.instance.controller,
                                count: HomeCubit.instance.banners.length,
                                effect: ExpandingDotsEffect(
                                  dotHeight: 8.h,
                                  dotWidth: 11.w,
                                  expansionFactor: 2.5,
                                  activeDotColor: ColorResources.whiteColor,
                                  dotColor: Color(0xffD9D9D9),
                                ),
                                onDotClicked: (index) {
                                  HomeCubit.instance.controller.animateToPage(
                                    index,
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 120.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  tr.ourServices,
                  style: AppTextStyle.textStyle(
                    appFontSize: 16.sp,
                    appFontHeight: 24.sp,
                    appFontWeight: FontWeight.w400,
                    color: ColorResources.blackColor,
                  ),
                ),
                Text(
                  tr.allServices,
                  style: AppTextStyle.textStyle(
                    appFontSize: 14.sp,
                    appFontHeight: 21.sp,
                    appFontWeight: FontWeight.w400,
                    color: ColorResources.primaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return Expanded(
                  child: GridView.builder(
                    itemCount: HomeCubit.instance.categories.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      //crossAxisSpacing: 10.w,
                      mainAxisSpacing: 12.h,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          context.pushNamed(Routes.servicesScreen);
                        },
                        child: Container(
                          height: 118.h,
                          width: 110.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.w,
                              color: Color(0xffEBEBEB),
                            ),
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 110.w,
                                // padding: EdgeInsets.symmetric(horizontal: 10.w),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.w,
                                    color: Color(0xffEBEBEB),
                                  ),
                                  borderRadius: BorderRadius.circular(6.r),
                                ),
                                child: Image.asset(
                                  HomeCubit.instance.categories[index].icon!,
                                  height: 79.h,
                                  width: 110.w,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                decoration: BoxDecoration(
                                  color: ColorResources.whiteColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5.r),
                                    bottomRight: Radius.circular(5.r),
                                  ),
                                ),
                                child: Text(
                                  HomeCubit.instance.categories[index].title!,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.textStyle(
                                    appFontSize: 12.sp,
                                    appFontHeight: 18.sp,
                                    appFontWeight: FontWeight.w400,
                                    color: ColorResources.blackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }
}
