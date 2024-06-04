import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:vaccination/providers/weather_provider.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/bottom_bar.dart';

class Schedules extends StatefulWidget {
  @override
  _SchedulesState createState() => _SchedulesState();
}

class _SchedulesState extends State<Schedules> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

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
