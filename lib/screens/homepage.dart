import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/buttonFun.dart';
import 'package:vaccination/widgets/bottom_bar.dart';
import 'package:vaccination/widgets/formCheckResult.dart';
import 'package:vaccination/widgets/report.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 20, top: 40),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    image: AssetImage("assets/image/avt.png"),
                  ),
                  const Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(color: Colors.black26, fontSize: 16),
                        ),
                        Text(
                          "Badagry Lagos, Nigeria",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const Report(),
                    const formCheckResult(),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "What do you need?",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 20),
                      height: 350, //
                      child: CustomScrollView(
                        slivers: <Widget>[
                          SliverPadding(
                            padding: const EdgeInsets.all(15),
                            sliver: SliverGrid.count(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              children: <Widget>[
                                ButtonFun(
                                    onPressed: () {},
                                    imagePath: "vaccine.png",
                                    btntext: "Vaccine"),
                                ButtonFun(
                                    onPressed: () {},
                                    imagePath: "track 1.png",
                                    btntext: "Lab Test"),
                                ButtonFun(
                                    onPressed: () {},
                                    imagePath: "Image0000.png",
                                    btntext: "Consultation"),
                                ButtonFun(
                                    onPressed: () {},
                                    imagePath: "track 2.png",
                                    btntext: "Quarantine")
                              ],
                            ),
                          ),
                        ],
                      ),
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
      fixedSize: Size(160, 70),
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

Widget _bottomBar(BuildContext context) {
  void onSchedule(BuildContext context) {
    Navigator.pushNamed(context, '/schedule');
  }

  return Container(
    margin: const EdgeInsets.only(
      left: 20,
      right: 20,
      bottom: 10,
    ),

    width: 320, height: 60,
    padding: const EdgeInsets.symmetric(
        vertical: 10, horizontal: 10), // Reduce padding
    decoration: BoxDecoration(
      color: colorScheme.onSurface,
      borderRadius: BorderRadius.circular(10), // Add border radius
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BottomBar(
          imagePath: 'assets/icons/home_blue.png',
          onTap: () {},
        ),
        BottomBar(
          imagePath: 'assets/icons/activity.png',
          onTap: () {
            onSchedule(context);
          },
        ),
        BottomBar(
          imagePath: 'assets/icons/clipboard.png',
          onTap: () {},
        ),
        BottomBar(
          imagePath: 'assets/icons/userr.png',
          onTap: () {
            Navigator.pushNamed(context, '/profile');
          },
        ),
        BottomBar(onTap: () {}, imagePath: 'assets/icons/cloud_blue.png')
      ],
    ),
  );
}
