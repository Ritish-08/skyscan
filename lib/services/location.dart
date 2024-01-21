import 'package:geolocator/geolocator.dart';
class Location {
  double? latitude;
  double? longitude;
  Future<void> getCurrentLocation() async {
    // Request permission
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      // Handle denied permission
      print('User denied location permission');
      return;
    }
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low);
    latitude = position.latitude;
    longitude = position.longitude;
  }
}