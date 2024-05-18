import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/bottom_bar.dart';
import 'package:vaccination/widgets/button_blue.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void onLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
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
            TextButton(
              onPressed: () {
                // Xử lý sự kiện khi nút được nhấn
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(colorScheme.onPrimary),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(12.0)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        backgroundColor: colorScheme.onSurface,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // Đặt border radius thành 0
                        ),
                      ),
                      onPressed: () {},
                      child: Image(
                        image: AssetImage('assets/icons/clipboard_blue.png'),
                        width: 30,
                        height: 30,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'Vaccine Scehdule Record',
                    style: TextStyle(color: colorScheme.shadow),
                  ),
                  SizedBox(width: 8.0),
                  Icon(
                    Icons.arrow_forward,
                    color: colorScheme.outlineVariant,
                  ),
                ],
              ),
            ),
            ButtonBlue(
              horizontal: 250.0,
              vertical: 48.0,
              text: 'Log out',
              buttonFunction: () => onLogin(context),
              colorbg: colorScheme.primary,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
      bottomNavigationBar: _bottomBar(context),
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

Widget _bottomBar(BuildContext context) {
  void onSchedule(BuildContext context) {
    Navigator.pushNamed(context, '/schedule');
  }

  void onHome(BuildContext context) {
    Navigator.pushNamed(context, '/home');
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
          imagePath: 'assets/icons/home.png',
          onTap: () {
            onHome(context);
          },
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
          imagePath: 'assets/icons/user_blue.png',
          onTap: () {},
        ),
        BottomBar(
          imagePath: 'assets/icons/cloud_blue.png',
          onTap: () {},
        )
      ],
    ),
  );
}
