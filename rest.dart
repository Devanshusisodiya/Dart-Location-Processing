import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  fetchData("Thor");
}

void fetchData(name) async {
  var response = await http
      .get(Uri.parse('http://127.0.0.1:8000/test-list-singular/${name}/'));
  var initJson = jsonDecode(response.body);

  var cdInstance = CoordinatesDecode.fromJson(initJson);
  var requestData = cdInstance.toJson();
  print(requestData);
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
