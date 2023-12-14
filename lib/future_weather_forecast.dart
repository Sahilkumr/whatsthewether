

import 'dart:html';

import 'package:flutter/material.dart';

class FutureWeatherForecast  extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temprature;
  const FutureWeatherForecast ({super.key,required time,required icon,required temprature});

  @override
  Widget build(BuildContext context) {
    return Card(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 100,  
                    child:  Column(
                      children: [
                        Text(time,style: const TextStyle(fontSize: 32 ,fontWeight: FontWeight.bold),),
                        Icon(icon),
                        Text(temprature,style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),                      
                      ],
                    ),
                  ),
                );
  }
}