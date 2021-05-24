import 'package:http/http.dart';
import 'dart:convert';

void main() {}

class CoordinatesDecode {
  var latitude;
  var longitude;

  CoordinatesDecode(this.longitude, this.latitude);

  CoordinatesDecode.fromJson(Map<String, dynamic> json)
      : latitude = json['latitude'],
        longitude = json['longitude'];

  Map<String, dynamic> toJson() =>
      {'latitude': latitude, 'longitude': longitude};
}
