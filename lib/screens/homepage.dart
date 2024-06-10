import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaccination/providers/weather_provider.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/buttonFun.dart';
import 'package:vaccination/widgets/bottom_bar.dart';
import 'package:vaccination/widgets/formCheckResult.dart';
import 'package:vaccination/widgets/report.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          left: 20,
          top: 40,
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                bottom: 5,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        'assets/image/me.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Current Location",
                          style: Theme.of(context).textTheme.bodyText2!.merge(
                                const TextStyle(
                                    color: Color(0xFF808080), fontSize: 15),
                              ),
                        ),
                        Text(
                          "Hoa Xuan, Cam Le",
                          style: Theme.of(context).textTheme.bodyText2!.merge(
                                TextStyle(
                                    color: colorScheme.shadow,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/print');
                    },
                    icon: const Icon(Icons.notifications_none),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Report(),
                    const formCheckResult(),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "What do you need?",
                          style: Theme.of(context).textTheme.bodyText1!.merge(
                                const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.only(right: 35, left: 15),
                      height: 350, //
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ButtonFun(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/vaccine');
                                },
                                imagePath: "vaccine.png",
                                btntext: "Vaccine"),
                            ButtonFun(
                                onPressed: () {},
                                imagePath: "track 1.png",
                                btntext: "Lab Test"),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ButtonFun(
                                onPressed: () {},
                                imagePath: "Image0000.png",
                                btntext: "Consultation"),
                            ButtonFun(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/hospital');
                                },
                                imagePath: "track 2.png",
                                btntext: "Hospitals")
                          ],
                        )
                      ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "COVID-19",
                              style: TextStyle(
                                  color: colorScheme.primary,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20),
                            ),
                            const Text(
                              " Symptoms",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 21),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildButton(
                                context: context,
                                imageAsset: 'assets/icons/headache.png',
                                title: 'Constant',
                                subtitle: 'Headache',
                              ),
                              const SizedBox(width: 20),
                              _buildButton(
                                context: context,
                                imageAsset: 'assets/icons/throat.png',
                                title: 'Sore',
                                subtitle: 'Throat',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildButton(
                                context: context,
                                imageAsset: 'assets/icons/temperature.png',
                                title: 'Elevated',
                                subtitle: 'Temperature',
                              ),
                              const SizedBox(width: 20),
                              _buildButton(
                                context: context,
                                imageAsset: 'assets/icons/coughing.png',
                                title: 'Severe',
                                subtitle: 'Coughing',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildButton(
                                context: context,
                                imageAsset: 'assets/icons/breathing.png',
                                title: 'Difficulty',
                                subtitle: 'Breathing',
                              ),
                              const SizedBox(width: 20),
                              _buildButton(
                                context: context,
                                imageAsset: 'assets/icons/sense.png',
                                title: 'Loss of',
                                subtitle: 'Sense of Smell',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _bottomBar(context),
      floatingActionButton: _floatingActionButton(context),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

Widget _buildButton({
  required BuildContext context,
  required String imageAsset,
  required String title,
  required String subtitle,
}) {
  final colorScheme = Theme.of(context).colorScheme;

  return TextButton(
    onPressed: () {
      // Handle button click
    },
    style: TextButton.styleFrom(
      fixedSize: const Size(160, 70),
      padding: const EdgeInsets.only(left: 10, top: 13),
      backgroundColor: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageAsset,
          width: 40,
          height: 40,
          fit: BoxFit.contain,
        ),
        const SizedBox(width: 5),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: Theme.of(context).textTheme.bodyText1!.merge(
                        TextStyle(
                          fontSize: 13,
                          color: colorScheme.shadow,
                        ),
                      )),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyText1!.merge(
                      TextStyle(
                        fontSize: 13,
                        color: colorScheme.shadow,
                      ),
                    ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
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
