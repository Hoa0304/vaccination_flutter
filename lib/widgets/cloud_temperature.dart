import 'package:flutter/material.dart';
import 'package:vaccination/app/utils/asset.dart';

class CloudTemperature extends StatelessWidget {
  CloudTemperature({Key? key, required this.temp}) : super(key: key) {
    tempx = temp / 10;
  }
  final num temp;
  num tempx = 0;
  @override
  Widget build(BuildContext context) {
    return renderTemp(temp);
  }
}
