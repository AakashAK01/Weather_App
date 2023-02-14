//import 'package:auto_routers/apidata.dart';
import 'package:auto_routers/freezz/dataaa/dataaa.dart';

import 'package:dio/dio.dart';

class WeatherApi {
  late Dio _dio;

  WeatherApi() {
    _dio = Dio();
  }
  Future<Dataaa> getAllCurrentWeatherDetails(String city) async {
    // var city = LocationPreference().getLocationPreference();
    var apiUrl =
        "http://api.weatherapi.com/v1/current.json?key=4ac3143747454d40886100725221807&q=$city&aqi=no";
    var res = await _dio.get(apiUrl);
    print(res.data);
    Dataaa weatherData = Dataaa.fromJson(res.data);
    print(weatherData);
    return weatherData;
  }
}
