import 'dart:io';

import 'package:methak/core/functions/alert_when_hack.dart';

Future<void> exitWhenHacked() async {
  await Future.delayed(Duration(seconds: 2), () {
    alertWhenHacked();
  }).then((error) {
    exit(0);
  });
}
