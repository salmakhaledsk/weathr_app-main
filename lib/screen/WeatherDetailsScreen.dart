import 'package:flutter/material.dart';
import 'package:weathr_app/Models/weather_model.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherDetailsScreen extends StatelessWidget {
  final WeatherData weatherData;

  const WeatherDetailsScreen({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Weather Details'),
     
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 30,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                Text(
                  weatherData.location,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Center(
              child: BoxedIcon(
                WeatherIcons.day_sunny,
                size: 100,
                color: Colors.yellow,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                '${weatherData.temperature.round()}°',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: const Text(
                'Precipitations',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Center(
              child: Text(
                'Max: ${weatherData.maxTemp.round()}° Min: ${weatherData.minTemp.round()}°',
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                
                color: Color.fromARGB(255, 1, 34, 81),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      BoxedIcon(
                        WeatherIcons.raindrop,
                        size: 30,
                        color: Colors.blue,
                      ),
                      Text('${weatherData.precipitation}%'),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      BoxedIcon(
                        WeatherIcons.humidity,
                        size: 30,
                        color: Colors.teal,
                      ),
                      Text('${weatherData.humidity}%'),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      BoxedIcon(
                        WeatherIcons.strong_wind,
                        size: 30,
                        color: Colors.grey,
                      ),
                      Text('${weatherData.windSpeed}/min'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Today', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('29°C'),
                Text('28°C'),
                Text('24°C'),
                Text('23°C'),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('15.00'),
                Text('16.00'),
                Text('17.00'),
                Text('18.00'),
              ],
            ),
            const Spacer(),
            Align(
              
              alignment: Alignment.center,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text('Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
