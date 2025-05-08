
class WeatherData {
  final String location;
  final double temperature;
  final double maxTemp;
  final double minTemp;
  final double precipitation;
  final int humidity;
  final double windSpeed;

  WeatherData({
    required this.location,
    required this.temperature,
    required this.maxTemp,
    required this.minTemp,
    required this.precipitation,
    required this.humidity,
    required this.windSpeed,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      location: json['name'],
      temperature: json['main']['temp'].toDouble(),
      maxTemp: json['main']['temp_max'].toDouble(),
      minTemp: json['main']['temp_min'].toDouble(),
      precipitation: json['rain']?['1h']?.toDouble() ?? 0.0,
      humidity: json['main']['humidity'],
      windSpeed: json['wind']['speed'].toDouble(),
    );
  }
}