import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {}

void fetchData(name) async {
  var url = Uri.parse('http://127.0.0.1:8000/test-list-singular/${name}/');
  var response = await http.get(url);
}

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
