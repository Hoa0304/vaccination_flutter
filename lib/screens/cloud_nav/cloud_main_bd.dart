import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vaccination/app/utils/asset.dart';
import 'package:vaccination/model/weather.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.listdata});

  final List<WeatherDetail> listdata;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(20.0),
        itemBuilder: (context, index) {
          DateTime dateTime = DateTime.parse(listdata[index].dt_txt);
          String formDay = DateFormat('EEEE').format(dateTime);
          String formatTime = DateFormat('HH:MM').format(dateTime);
          return Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(20.0)),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        renderTemp(listdata[index].main.temp, size: 30),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          listdata[index].weather.main,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      formDay,
                      style: TextStyle(fontSize: 16, color: Colors.blue[900]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      formatTime,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )),
                Container(
                  width: MediaQuery.sizeOf(context).width / 4,
                  child: Image.asset(
                    AssestCustom.getLinkImg(listdata[index].weather.main),
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, _) => const SizedBox(
              height: 15,
            ),
        itemCount: 20);
  }
}
