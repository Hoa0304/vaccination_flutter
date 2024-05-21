// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vaccination/model/weather.dart';
import 'package:vaccination/providers/weather_provider.dart';
import 'package:vaccination/widgets/cloud_detail_weather.dart';
import 'package:vaccination/widgets/cloud_location.dart';
import 'package:vaccination/widgets/cloud_temperature.dart';
import 'package:vaccination/widgets/cloud_weather_icon.dart';

class Cloud extends StatefulWidget {
  const Cloud({super.key});

  @override
  State<Cloud> createState() => _CloudState();
}

class _CloudState extends State<Cloud> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 0.0),
          child: Text(
            "Weather-related illnesses",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Color(0xff003285), Color.fromARGB(197, 0, 58, 115)]),
          ),
          child: FutureBuilder(
              future: context.read<WeatherProvider>().getWeatherCurrent(),
              initialData: null,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (!snapshot.hasData) {
                  return Container(
                    child: Text('No data'),
                  );
                }
                WeatherData data = snapshot.data as WeatherData;

                print(data.weather[0].main);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CloudWeatherIcon(
                      nameIcon: data.weather[0].main,
                    ),
                    CloudTemperature(
                      temp: data.main.temp,
                    ),
                    CloudLocation(
                      nameLocation: data.name,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CloudDetailWeather(
                      humidity: data.main.humidity,
                      speed: data.wind.speed,
                    ),
                  ],
                );
              })),
    );
  }
}
