import 'package:flutter/material.dart';
import 'package:vaccination/app/utils/asset.dart';

class CloudWeatherIcon extends StatelessWidget {
  const CloudWeatherIcon({super.key, required this.nameIcon});

  final String nameIcon;
  @override
  Widget build(BuildContext context) {
    return Image.asset(AssestCustom.getLinkImg(nameIcon));
  }
}
