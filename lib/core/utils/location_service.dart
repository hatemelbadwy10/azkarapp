import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:google_api_availability/google_api_availability.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:huawei_location/huawei_location.dart' as huawei;

class LocationServices {
  final Location _location = Location();
  LocationData? locationData;
  LatLng? _latLng;
  huawei.LocationRequest? locationRequest = huawei.LocationRequest();
  huawei.Geofence? geofence;
  huawei.LocationSettingsRequest? locationSettingsRequest;


  LocationServices() {
    if (Platform.isIOS) requestLocationPermission();
  }

  Future requestLocationPermission() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await _location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await _location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }

  Future<LatLng?> getCurrentLocation() async {
    if (await _checkIsHuawieDevice()) {
//      _latLng = await _requestHuawieLocation();
    } else {
      // ignore: body_might_complete_normally_catch_error
      locationData = await _location.getLocation().catchError((error) async {
        log("Error $error");
      });
      if (locationData == null) {
        return null;
      }
      _latLng = LatLng(locationData!.latitude!, locationData!.longitude!);
    }
    log('_latlng ${_latLng}');
    return _latLng!;
  }

  _checkIsHuawieDevice() async {
    if (Platform.isIOS) return false;
    GooglePlayServicesAvailability availability = await GoogleApiAvailability
        .instance
        .checkGooglePlayServicesAvailability();
    bool isHauwieDevice =
        availability == GooglePlayServicesAvailability.serviceInvalid;
    if (isHauwieDevice) {
      locationSettingsRequest = huawei.LocationSettingsRequest(
        requests: <huawei.LocationRequest>[locationRequest!],
        needBle: true,
        alwaysShow: true,
      );
    }
    return isHauwieDevice;
  }

  // Future<LatLng> _requestHuawieLocation() async {
  //   try {
  //     await locationService!.requestLocationUpdatesCb(
  //       locationRequest!,
  //       huawei.LocationCallback(
  //         onLocationResult: (result) {
  //           if (result.lastHWLocation != null) {
  //             var location = result.lastHWLocation!;
  //             if (kDebugMode) {
  //               print(
  //                   _latLng = LatLng(location.latitude!, location.longitude!));
  //             }
  //           }
  //         },
  //         onLocationAvailability: (avalailbilty) {},
  //       ),
  //     );
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e.toString());
  //     }
  //   }
  //   return _latLng!;
  // }

  bool checkMockLocation() {
    return locationData!.isMock!;
  }

  Future<LatLng> listeToChangedLocation() async {
    _location.onLocationChanged.listen((LocationData currentLocation) {
      locationData = currentLocation;
    });
    _latLng = LatLng(locationData!.latitude!, locationData!.longitude!);
    return _latLng!;
  }

  LatLng updateSelectedLocation(LatLng location) {
    _latLng = location;
    return _latLng!;
  }

  LatLng get getLatLng => _latLng ?? const LatLng(0.0, 0.0);
}
