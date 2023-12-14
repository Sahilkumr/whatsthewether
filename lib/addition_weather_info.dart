import 'package:flutter/material.dart';

class AdditionalWeatherInfo extends StatelessWidget {
  const AdditionalWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
                children: [
              Icon(Icons.water_drop, size: 48,),
              Text('Humidity',style: TextStyle(fontSize: 18,),),
              Text('94',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              );
  }
}