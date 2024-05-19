import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/bottom_bar.dart';
import 'package:vaccination/widgets/button_blue.dart';
import 'package:vaccination/widgets/text_button.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void onLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  void onSchedule(BuildContext context) {
    Navigator.pushNamed(context, '/schedule');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              "Profile View",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 15, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 150.0,
                  height: 150.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/image/me.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    profile(
                      name: 'Name',
                      title: 'Tran Thi Cam Hoa',
                    ),
                    profile(
                      name: 'Address',
                      title: 'Hoa Xuan, Cam Le',
                    ),
                    profile(
                      name: 'NIN',
                      title: '0789469867',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25.0),
            textButton(
              function: () => onSchedule(context),
              text: 'Vaccine Scehdule Record',
              icon: 'assets/icons/clipboard_blue.png',
            ),
            const SizedBox(height: 25.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Settings',
                style: Theme.of(context).textTheme.bodyText1!.merge(
                      TextStyle(
                        color: colorScheme.shadow,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
              ),
            ),
            const SizedBox(height: 25.0),
            textButton(
              function: () => onSchedule(context),
              text: 'Change Password',
              icon: 'assets/icons/change.png',
            ),
            const SizedBox(height: 25.0),
            textButton(
              function: () => onSchedule(context),
              text: 'Set Default Address',
              icon: 'assets/icons/map.png',
            ),
            const SizedBox(height: 25.0),
            textButton(
              function: () => onSchedule(context),
              text: 'Group',
              icon: 'assets/icons/message.png',
            ),
            const SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                onLogin(context);
              },
              style: TextButton.styleFrom(
                fixedSize: Size(250, 45),
                backgroundColor: colorScheme.onPrimary,
                foregroundColor: colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: colorScheme.primary,
                    width: 2.0,
                  ),
                ),
              ),
              child: const Text(
                'Log out',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _bottomBar(context),
      floatingActionButton: _floatingActionButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class profile extends StatelessWidget {
  final String name;
  final String title;
  const profile({
    super.key,
    required this.name,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.bodyText2!.merge(
                const TextStyle(
                  color: Color(0xFF808080),
                  fontSize: 15,
                ),
              ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1!.merge(
                TextStyle(
                  color: colorScheme.shadow,
                  fontSize: 17,
                ),
              ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}

void onSchedule(BuildContext context) {
  Navigator.pushNamed(context, '/schedule');
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
            imagePath: 'assets/icons/clipboard.png',
            onTap: () {
              onSchedule(context);
            },
          ),
        ),
        Expanded(
          child: BottomBar(
            imagePath: 'assets/icons/cloud_blue.png',
            onTap: () {},
          ),
        ),
        Expanded(
          child: BottomBar(
            imagePath: 'assets/icons/user_blue.png',
            onTap: () {},
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
