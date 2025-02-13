import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:methak/core/routes/routes.dart';
import 'package:methak/features/auth/screens/login_screen.dart';
import 'package:methak/features/home/screen/home_screen.dart';
import 'package:methak/features/home_tap/screen/home_tap_screen.dart';
import 'package:methak/features/onboard/screens/onboard_screen.dart';
import 'package:methak/features/reservation/screens/edit_consultations_screen.dart';
import 'package:methak/features/search/screens/search_screen.dart';
import 'package:methak/features/services/screens/display_service_screen.dart';
import 'package:methak/features/services/screens/services_screen.dart';
import 'package:methak/features/splash/screen/splash_screen.dart';

import '../../features/reservation/screens/book_the_service_screen.dart';
import '../../features/reservation/screens/service_request_screen.dart';

class RoutesGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final isIos = defaultTargetPlatform == TargetPlatform.iOS;
    final nameRoute = settings.name;
    //final arg = settings.arguments;

    switch (nameRoute) {
      case Routes.splash:
        return _buildRoute(const SplashScreen(), isIos);
      case Routes.login:
        return _buildRoute(const LoginScreen(), isIos);
      case Routes.servicesScreen:
        return _buildRoute(const ServicesScreen(), isIos);
      case Routes.home:
        return _buildRoute(const HomeScreen(), isIos);
      case Routes.homeTap:
        return _buildRoute(const HomeTapScreen(), isIos);
      case Routes.displayServiceScreen:
        return _buildRoute(const DisplayServiceScreen(), isIos);
      case Routes.onBoard:
        return _buildRoute(const OnboardScreen(), isIos);
      case Routes.searchScreen:
        return _buildRoute(const SearchScreen(), isIos);
      case Routes.editConsultationsScreen:
        return _buildRoute(const EditConsultationsScreen(), isIos);
      case Routes.bookTheServiceScreen:
        return _buildRoute(const BookTheServiceScreen(), isIos);
      case Routes.serviceRequest:
        return _buildRoute(const ServiceRequestScreen(), isIos);
      default:
        return _buildRoute(const UndefinedWidget(), isIos);
    }
  }

  static _buildRoute(Widget page, bool isIos) {
    if (isIos) {
      return CupertinoPageRoute(builder: (_) => page);
    } else {
      return MaterialPageRoute(builder: (_) => page);
    }
  }
}

class UndefinedWidget extends StatelessWidget {
  const UndefinedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("undefined"),
      ),
      body: const Center(
        child: Text("undefined"),
      ),
    );
  }
}
