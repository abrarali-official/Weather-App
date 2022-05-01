import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = 'f3f5842b11f40979f570c670af442434';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class NetworkHelper {
  NetworkHelper(String s);

  final Uri uri = Uri.parse(openWeatherMapURL);

  Future getData() async {
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      // ignore: avoid_print
      print(response.statusCode);
    }
  }
}
