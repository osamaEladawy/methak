import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:methak/app/my_app.dart';
import 'package:methak/app_injections.dart';
import 'package:methak/core/classes/set_up_logger.dart';
import 'package:methak/core/storage/pref_services.dart';
import 'package:methak/core/storage/secure_storage_service.dart';
import 'package:methak/shared/cubits/bloc_observer.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await SecureStorageService.instance.init();
  await PrefServices.instance.init();
  await appInjections();
  Bloc.observer = MyBlocObserver();
  SetUpLogger.instance.initLogger();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MainApp(),
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (_) => MainApp(),
    // ),
  );
}
