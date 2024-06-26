import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:vaccination/app/utils/asset.dart';
import 'package:vaccination/providers/weather_provider.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/bottom_bar.dart';
import 'package:http/http.dart' as http;

class Schedules extends StatefulWidget {
  @override
  _SchedulesState createState() => _SchedulesState();
}

class _SchedulesState extends State<Schedules> {
  List<dynamic> scheduleData = [];
  String currentEmail = "";
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Future<void> fetchCurrentUserEmail() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        currentEmail = user.email ?? '';
      });
    }
  }

  Future<void> fetchScheduleData() async {
    final response = await http
        .post(Uri.parse('http://${API_K.url}/getSchedule.php'), body: {
      'Email': currentEmail,
    });
    if (response.statusCode == 200) {
      setState(() {
        scheduleData = json.decode(response.body);
      });
    } else {
      print('Error: FailtogetSchedule');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchCurrentUserEmail();
    fetchScheduleData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TableCalendar(
                  firstDay: DateTime.utc(2015, 10, 16),
                  lastDay: DateTime.utc(2035, 12, 30),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  calendarFormat: _calendarFormat,
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  },
                  onFormatChanged: (format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                  },
                  daysOfWeekHeight: 30.0,
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: colorScheme.secondary,
                      shape: BoxShape.circle,
                    ),
                    weekendTextStyle: TextStyle(
                      color: colorScheme.error,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: scheduleData.length,
                    itemBuilder: (context, index) {
                      final schedule = scheduleData[index];
                      String vc = "";
                      if (schedule['VID'] == '1') {
                        vc = "moderna";
                      }
                      if (schedule['VID'] == '2') {
                        vc = "pfize";
                      }
                      if (schedule['VID'] == '3') {
                        vc = "astraZenaca";
                      }
                      if (schedule['VID'] == '4') {
                        vc = "sinovac";
                      }
                      return Container(
                        constraints: BoxConstraints(
                            maxHeight: 150,
                            minHeight: 100,
                            maxWidth: 350,
                            minWidth: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colorScheme.background,
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                        child: Row(
                          children: [
                            // Hình ảnh
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/image/giltol.png',
                                width: 100,
                                height: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 16.0),
                            // Chữ và nút
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${schedule['Hospital']}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .merge(
                                          TextStyle(
                                            fontSize: 16.0,
                                            color: colorScheme.shadow,
                                          ),
                                        ),
                                  ),
                                  Text(
                                    vc,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .merge(
                                          TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.grey,
                                          ),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.83,
            left: MediaQuery.of(context).size.width * 0.82,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/add_schedule');
              },
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 50,
                  maxWidth: 50,
                  minWidth: 45,
                  minHeight: 45,
                ),
                decoration: BoxDecoration(
                  color: colorScheme.primary,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.add,
                  color: colorScheme.onPrimary,
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomBar(context),
      floatingActionButton: _floatingActionButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
    );
  }

  Widget _bottomBar(BuildContext context) {
    void onHome(BuildContext context) {
      Navigator.pushNamed(context, '/home');
    }

    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 10,
      ),
      width: 320,
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: colorScheme.onSurface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: BottomBar(
              imagePath: 'assets/icons/home.png',
              onTap: () {
                onHome(context);
              },
            ),
          ),
          Expanded(
            child: BottomBar(
              imagePath: 'assets/icons/clipboard_blue.png',
              onTap: () {},
            ),
          ),
          Expanded(
            child: BottomBar(
              imagePath: 'assets/icons/cloud_blue.png',
              onTap: () {
                context.read<WeatherProvider>().getWeatherCurrent();
                Navigator.pushNamed(context, '/weather');
              },
            ),
          ),
          Expanded(
            child: BottomBar(
              imagePath: 'assets/icons/userr.png',
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _floatingActionButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Transform.rotate(
          angle: 3 * 3.14159 / 4, // Xoay 135 độ
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: colorScheme.primary,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Transform.rotate(
                angle: -3.14159 / 1.3,
                child: Image.asset('assets/icons/clock.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
