import "dart:ui";

import "package:flutter/material.dart";
import "package:whats_the_weather/addition_weather_info.dart";
import "package:whats_the_weather/future_weather_forecast.dart";

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'What\'s The Weather',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh, size: 30,),)
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            //Main Card
            SizedBox(
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                elevation: 12,
                color: const Color.fromARGB(255, 188, 224, 239),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Text('200°C',style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold,),),
                          SizedBox(height: 10),

                          Icon(Icons.cloud, size: 100,),
                          SizedBox(height: 10),

                          Text('Cloudy',style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          const SizedBox(height: 10),

          //forecast Cards
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('Weather Forecast',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),)),
          const SizedBox(height: 5),
          
           const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child:  Row(
              children: [
                FutureWeatherForecast(),
                 FutureWeatherForecast(),
                 FutureWeatherForecast(),
                 FutureWeatherForecast(),
                 FutureWeatherForecast(),
                 FutureWeatherForecast(),
                 FutureWeatherForecast(),

              ],
            ),
           ),
          // const Placeholder(fallbackHeight: 120,),
    
          const SizedBox(height: 10),

          //Additional Info
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('More Information',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),)),
          const SizedBox(height: 5),          
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             AdditionalWeatherInfo(),
             AdditionalWeatherInfo(),
             AdditionalWeatherInfo(),
            ],
          )
        ]),
      ),
    );
  }
}
