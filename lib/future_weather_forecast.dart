

import 'package:flutter/material.dart';

class FutureWeatherForecast  extends StatelessWidget {
  const FutureWeatherForecast ({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 100,  
                    child: const Column(
                      children: [
                        Text('9:00',style: TextStyle(fontSize: 32 ,fontWeight: FontWeight.bold),),
                        Icon(Icons.cloud,size: 48,),
                        Text('111°C',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),                      
                      ],
                    ),
                  ),
                );
  }
}