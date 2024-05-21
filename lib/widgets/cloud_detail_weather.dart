import 'package:flutter/material.dart';

class CloudDetailWeather extends StatelessWidget {
  const CloudDetailWeather(
      {super.key, required this.humidity, required this.speed});

  final num speed;
  final num humidity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset("assets/icons/Vector.png"),
            Text(
              "${speed}km/h",
              style: TextStyle(fontSize: 21, color: Colors.white),
            )
          ],
        ),
        Column(
          children: [
            Image.asset("assets/icons/humiditysmall.png"),
            Text(
              "${humidity}%",
              style: TextStyle(fontSize: 21, color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
