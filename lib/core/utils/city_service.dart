import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'get_it.dart';
import 'location_service.dart';

class CityService{
  var location = locator<LocationServices>().locationData;

  Future<String?> getCityName() async {
    try {
      // Get the current location

      double latitude = location!.latitude!;
      double longitude = location!.longitude!;

      // Use geocoding to get placemarks
      List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);

      if (placemarks.isNotEmpty) {
        // Return the city name
        return placemarks.first.locality;
      } else {
        return null;
      }
    } catch (e) {
      print("Error fetching city name: $e");
      return null;
    }
  }
}