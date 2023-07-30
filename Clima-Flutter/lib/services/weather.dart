import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const String apiKey = '2a28af9685c95a126cb90ad900f7f8f7';

class WeatherModel {

  Future<dynamic> getWeatherByCityName(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(Uri.https(
        'api.openweathermap.org', 'data/2.5/weather',
        {'q': cityName,
          'appid': apiKey}
    ));
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();
    var latitude = location.latitude;
    var longitude = location.longitude;
    print('latitude: $latitude');
    print('longitude: $longitude');

    NetworkHelper networkHelper = NetworkHelper(Uri.https(
        'api.openweathermap.org', 'data/2.5/weather',
        {'lat': latitude.toString(),
          'lon': longitude.toString(),
          'appid': apiKey}
    ));
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
