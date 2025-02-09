import 'dart:io';

import 'package:methak/core/classes/set_up_logger.dart';
import 'package:methak/core/functions/exit_when_hack.dart';
import 'package:safe_device/safe_device.dart';
import 'package:device_info_plus/device_info_plus.dart';

Future<bool> checkIfRealDevice() async {
  final isRealDevice = await SafeDevice.isRealDevice;
  if (isRealDevice) {
    SetUpLogger.instance.printLog("isRealDevice: $isRealDevice", char: 'i');
  } else {
    SetUpLogger.instance.printLog("isRealDevice: $isRealDevice", char: 'w');
  }
  return isRealDevice;
}

Future<bool> checkAppUseExternalStorage() async {
  final isUseExternalStorage = await SafeDevice.isOnExternalStorage;
  if (isUseExternalStorage) {
    SetUpLogger.instance
        .printLog("isUseExternalStorage: $isUseExternalStorage", char: 'i');
  } else {
    SetUpLogger.instance
        .printLog("isUseExternalStorage: $isUseExternalStorage", char: 'i');
  }
  return isUseExternalStorage;
}

Future<bool> checkAppNotSecure() async {
  final isBroken = await SafeDevice.isJailBroken;
  if (isBroken) {
    SetUpLogger.instance.printLog("isBroken: $isBroken", char: 'w');
  } else {
    SetUpLogger.instance.printLog("isBroken: $isBroken", char: 'i');
  }
  return isBroken;
}

Future<bool> checkDeviceIsSave() async {
  final isSave = await SafeDevice.isSafeDevice;
  if (isSave) {
    SetUpLogger.instance.printLog("isSave: $isSave", char: 'i');
  } else {
    SetUpLogger.instance.printLog("isSave: $isSave", char: 'w');
  }
  return isSave;
}

Future<void> checkAboutSecureAppAndDevice() async {
  try {
    //* check safe device
    if (await checkIfRealDevice() == true &&
        await checkDeviceIsSave() == true) {
      SetUpLogger.instance.printLog("about Device : real device is saved");
    } else {
      SetUpLogger.instance
          .printLog("about Device : not saved or not a real device", char: 'w');
    }
    //* check about App (is secure or not)
    if (await checkAppNotSecure() == true) {
      SetUpLogger.instance.printLog(
          "Device is broken/rooted (This app is not secure)",
          char: 'w');
      exitWhenHacked();
      return;
    } else {
      SetUpLogger.instance.printLog("Device is Secure", char: 'i');
    }
    await getInfoDevice();
  } catch (e) {
    SetUpLogger.instance.printLog("Error: $e", char: 'e');
  }
}

Future<void> getInfoDevice() async {
  try {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      //* check about data (where fetching data)
      if (await checkAppUseExternalStorage() == true) {
        SetUpLogger.instance
            .printLog("the app is running from external storage", char: 'i');
      } else {
        SetUpLogger.instance.printLog("the app is running from local storage", char: 'i');
      }
      final info = await deviceInfoPlugin.androidInfo;
      SetUpLogger.instance.printLog(info.device, char: 'i');
    } else if (Platform.isIOS) {
      final info = await deviceInfoPlugin.iosInfo;
      SetUpLogger.instance.printLog(info.systemVersion, char: 'i');
    }
  } catch (e) {
    SetUpLogger.instance.printLog("Error getting device info: $e", char: 'e');
  }
}
