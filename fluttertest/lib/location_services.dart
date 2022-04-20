import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class LocationService{
  final String key = 'b7ff85e69430458a801bb2d9f49e9e02';

  Future<List<double>> getPlace(String input) async {

    final String url = 'https://api.geoapify.com/v1/geocode/search?text=$input&lang=en&type=city&format=json&apiKey=$key';

    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    List<double> results = [
      json['results'][0]['lat'],
      json['results'][0]['lon']
      ];
    return results;
  }
} 