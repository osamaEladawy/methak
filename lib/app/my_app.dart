import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:methak/app_injections.dart';
import 'package:methak/core/routes/routes_generator.dart';
import 'package:methak/features/auth/cubit/auth_cubit.dart';
import 'package:methak/features/home/cubit/home_cubit.dart';
import 'package:methak/features/home_tap/cubit/home_tap_cubit.dart';
import 'package:methak/features/home_tap/screen/home_tap_screen.dart';
import 'package:methak/features/onboard/cubit/onboard_cubit.dart';
import 'package:methak/features/reservation/cubit/reservation_cubit.dart';
import 'package:methak/features/search/cubit/search_cubit.dart';
import 'package:methak/features/services/cubit/services_cubit.dart';
import 'package:methak/features/splash/cubit/theme_cubit.dart';
import 'package:methak/features/splash/screen/splash_screen.dart';
import 'package:methak/generated/l10n.dart';

//! when you want using localization in this app
//* please install the flutter intl (extention) from plugins in android studio or visual studio

final navigatorKey = GlobalKey<NavigatorState>();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
          ),
          child: MultiBlocProvider(
            providers: [
              BlocProvider<ThemeCubit>(
                  create: (context) => getIt<ThemeCubit>()),
              BlocProvider<OnboardCubit>(
                  create: (context) => getIt<OnboardCubit>()),
              BlocProvider<AuthCubit>(create: (context) => getIt<AuthCubit>()),
              BlocProvider<ServicesCubit>(
                  create: (context) => getIt<ServicesCubit>()),
              BlocProvider<HomeCubit>(create: (context) => getIt<HomeCubit>()),
              BlocProvider<HomeTapCubit>(
                  create: (context) => getIt<HomeTapCubit>()),
              BlocProvider<SearchCubit>(
                  create: (context) => getIt<SearchCubit>()),
              BlocProvider<ReservationCubit>(
                  create: (context) => getIt<ReservationCubit>()),
              // BlocProvider<RecentlyAddedCubit>(create: (context) => getIt<RecentlyAddedCubit>()),
              // BlocProvider<MostPopularCubit>(create: (context) => getIt<MostPopularCubit>()),
              // BlocProvider<SportsActivityCubit>(create: (context) => getIt<SportsActivityCubit>()),
              // BlocProvider<WorldLeaguesCubit>(create: (context) => getIt<WorldLeaguesCubit>()),
            ],
            child: MaterialApp(
              navigatorKey: navigatorKey,
              debugShowCheckedModeBanner: false,
              onGenerateRoute: RoutesGenerator.onGenerateRoute,
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              locale: Locale("ar"),
              //theme: dark,
              home: child,
            ),
          ),
        );
      },
      child: SplashScreen(),
    );
  }
}
