import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaccination/model/weather.dart';
import 'package:vaccination/providers/weather_provider.dart';
import 'package:vaccination/screens/cloud_nav/cloud_main_bd.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [Color(0xff003285), Color.fromARGB(197, 0, 58, 115)]),
      ),
      child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeatherDetail(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            List<WeatherDetail> listData = snapshot.data as List<WeatherDetail>;
            return Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: false,
                automaticallyImplyLeading: false,
                title: Row(
                  children: [
                    Icon(
                      CupertinoIcons.location,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    AnimatedTextKit(animatedTexts: [
                      TypewriterAnimatedText("Da Nang City",
                          textStyle:
                              TextStyle(fontSize: 25, color: Colors.white),
                          speed: Duration(milliseconds: 100)),
                    ])
                  ],
                ),
                actions: [
                  Icon(
                    CupertinoIcons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
              body: DetailBody(
                listdata: listData,
              ),
            );
          }),
    );
  }
}
