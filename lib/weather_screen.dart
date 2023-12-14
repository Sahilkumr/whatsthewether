import "dart:ui";

import "package:flutter/material.dart";

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
          
           Row(
            children: [
               Card(
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
                )
            ],
          ),
          // const Placeholder(fallbackHeight: 120,),
    
          const SizedBox(height: 10),

          //Additional Info
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('More Information',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),)),
          const SizedBox(height: 10),

          
          const Placeholder(fallbackHeight: 120,),

        ]),
      ),
    );
  }
}
