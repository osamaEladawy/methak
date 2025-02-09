import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import 'package:methak/app/my_app.dart';


part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());

  static final LocationCubit _locationCubit = BlocProvider.of(navigatorKey.currentContext!);

  static LocationCubit get instance => _locationCubit;
  Position? position;
  List<Position>? positionAddRecipient = [];
  var location = Location();

  Future<bool?> getGeoLocation(BuildContext context) async {
    log("from get locatopn here");
    Location location = Location();

    bool serviceEnabled;

    PermissionStatus permissionGranted;

    if (Platform.isAndroid) {
      serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          //await _onWillPop(context);
          return false;
        }
      }

      permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          // await _onWillPop(context);
          return false;
        }
      }
      log("_permissionGranted.index");
      log(permissionGranted.index.toString());
      if (permissionGranted.index == 0) {
        position = await Geolocator.getCurrentPosition();
      }
      //position =  await Geolocator.getCurrentPosition();
    } else {
      final accuracyStatus = await Geolocator.getLocationAccuracy();
      switch (accuracyStatus) {
        case LocationAccuracyStatus.reduced:
          //await _onWillPop(context);

         // bool openLocation = await Geolocator.openLocationSettings();
          // exit(0);
          return false;
        // Precise location switch is OFF.

        case LocationAccuracyStatus.precise:
          serviceEnabled = await location.serviceEnabled();
          if (!serviceEnabled) {
            serviceEnabled = await location.requestService();
            if (!serviceEnabled) {
              // await _onWillPop(context);
              return false;
            }
          }
          permissionGranted = await location.hasPermission();
          if (permissionGranted == PermissionStatus.denied) {
            permissionGranted = await location.requestPermission();

            if (permissionGranted != PermissionStatus.granted) {
              // await _onWillPop(context);
              return false;
            }
          }
          log("_permissionGranted.index");
          log(permissionGranted.index.toString());
          if (permissionGranted.index == 0) {
            position = await Geolocator.getCurrentPosition();
          }
          break;
        case LocationAccuracyStatus.unknown:

          // The platform doesn't support this feature, for example an Android device.
          break;
      }
    }

    //  codedAddress = await Geocoder.local.findAddressesFromCoordinates(Coordinates(position!.latitude, position!.longitude));
    return true;
  }

  // Future<bool> _onWillPop(BuildContext context) async {
  //   return Constant.appDialogLogOut(context: context,
  //       text: LocaleKeys.areYouSure.tr(),
  //       presNo: true,
  //       textDesc: LocaleKeys.sorryYouCannotEnterTheApplication.tr(),
  //       onPressYes: (){
  //         exit(0);
  //       },
  //       //onPressNo: onPressNo
  //   )
  //       ?? false;
  // }
}

