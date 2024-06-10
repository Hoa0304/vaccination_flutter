import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vaccination/providers/weather_provider.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/Image_Button.dart';
import 'package:vaccination/widgets/bottom_bar.dart';
import 'package:vaccination/widgets/button_blue.dart';
import 'package:vaccination/widgets/input.dart';

class Vaccines extends StatefulWidget {
  @override
  _VaccinesState createState() => _VaccinesState();
}

class _VaccinesState extends State<Vaccines> {
  TextEditingController searchController = TextEditingController();
  void onLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: colorScheme.primary,
                  width: 0.5,
                ),
              ),
              padding: const EdgeInsets.only(left: 5),
              width: 30,
              height: 30,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ),
            const Text(
              "Vaccines",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: colorScheme.primary,
                  width: 0.5,
                ),
              ),
              width: 30,
              height: 30,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.notifications_none,
                  size: 20,
                ),
                onPressed: () {},
              ),
            ),
          ],
        )),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Need to learn about the available vaccines?',
                  style: Theme.of(context).textTheme.bodyText1!.merge(
                        const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      ImageButton(
                        imageAsset: 'assets/image/vaccine.svg',
                        text: 'Mordena',
                        function: () {},
                      ),
                      ImageButton(
                        imageAsset: 'assets/image/hi.svg',
                        text: 'Astrazeneca',
                        function: () {},
                      ),
                    ]),
                    Column(children: [
                      ImageButton(
                        imageAsset: 'assets/image/hi.svg',
                        text: 'Pfizer',
                        function: () {},
                      ),
                      ImageButton(
                        imageAsset: 'assets/image/hi.svg',
                        text: 'Sinovac',
                        function: () {},
                      ),
                    ]),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomBar(context),
      floatingActionButton: _floatingActionButton(context),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

void onSchedule(BuildContext context) {
  Navigator.pushNamed(context, '/schedule');
}

Widget _bottomBar(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      left: 20,
      right: 20,
      bottom: 10,
    ),
    width: 350,
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
            imagePath: 'assets/icons/home_blue.png',
            onTap: () {},
          ),
        ),
        Expanded(
          child: BottomBar(
            imagePath: 'assets/icons/clipboard.png',
            onTap: () {
              onSchedule(context);
            },
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
