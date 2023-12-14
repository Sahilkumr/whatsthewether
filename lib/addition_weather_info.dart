import 'package:flutter/material.dart';

class AdditionalWeatherInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const AdditionalWeatherInfo({
    super.key,
    required this.icon,
    required this.label,
    required this.value
    });

  @override
  Widget build(BuildContext context) {
    return  Column(
                children: [
              Icon(icon, size: 48,),
              Text(label,style: TextStyle(fontSize: 18,),),
              Text(value,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              );
  }
}