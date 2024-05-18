import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/button_blue.dart';

class Profile extends StatelessWidget {
  void onLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 70.0),
          child: Text(
            "Profile View",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: Theme.of(context).textTheme.bodyText2!.merge(
                            const TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 14,
                            ),
                          ),
                    ),
                    Text(
                      'Tran Thi Cam Hoa',
                      style: Theme.of(context).textTheme.bodyText1!.merge(
                            TextStyle(
                              color: colorScheme.shadow,
                              fontSize: 15,
                            ),
                          ),
                    ),
                    Text('Line 2'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16.0), // Khoảng cách giữa ảnh và nút
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
    );
  }
}
