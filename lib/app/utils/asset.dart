import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const linkAsset = 'assets/icons/';

class AssestCustom {
  static String getLinkImg(String name) =>
      '$linkAsset${name.replaceAll(' ', '').toLowerCase()}.png';
}

class MyKey {
  static const String api_token = 'babc5ad531821b261d6e68719f1d044a';
}

Widget renderTemp(num temp, {double size = 100}) {
  num tempx = temp / 10;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        tempx.round().toString(),
        style: TextStyle(
            fontSize: size, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      Text(
        '0',
        style: TextStyle(
            fontSize: size / 3,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    ],
  );
}
