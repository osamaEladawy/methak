import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/core/functions/check_about_secure_app_and_device.dart';
import 'package:methak/core/routes/routes.dart';
import 'package:methak/shared/extentions/navigations.dart';
import 'package:methak/shared/resources/image_resources.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await checkAboutSecureAppAndDevice();
    await Future.delayed(const Duration(milliseconds: 3000), () {
      context.pushReplacementNamed(Routes.onBoard);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagesResources.splash,
              width: 350.w,
              height: 272.99.h,
            ),
          ],
        ),
      ),
    );
  }
}
