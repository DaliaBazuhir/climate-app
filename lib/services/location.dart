

import 'package:geolocator/geolocator.dart';
class Location {
  late double latitude;
  late  double longitude;

   Future<void> getCurrentLocation() async {
     LocationPermission permission;
     permission = await Geolocator.checkPermission();
     if (permission == LocationPermission.denied) {
       permission = await Geolocator.requestPermission();
     }
      try {

         Position position = await Geolocator.getCurrentPosition();

         latitude = position.latitude;
         longitude = position.longitude;
      } catch (e) {
         print(e);
      }
   }
}
