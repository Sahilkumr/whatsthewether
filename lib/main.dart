import 'package:flutter/material.dart';
import 'package:whats_the_weather/weather_screen.dart';

void main() {
  runApp(const WhatsTheWeather());
}

class WhatsTheWeather extends StatelessWidget {
  const WhatsTheWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Know Your Weather Report!',
      home: const WeatherScreen(),
    );
  }
}
