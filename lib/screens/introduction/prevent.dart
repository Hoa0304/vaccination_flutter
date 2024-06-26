import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/app_bar.dart';
import 'package:vaccination/widgets/button_blue.dart';
import 'package:vaccination/widgets/text_intro.dart';

class Prevent extends StatelessWidget {
  void onPressed(BuildContext context) {
    Navigator.pushNamed(context, '/check');
  }

  void onLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => onPressed(context),
                  icon: Text('Next',
                      style: Theme.of(context).textTheme.bodyText2!.merge(
                            TextStyle(color: colorScheme.primary),
                          )),
                ),
              ],
            ),
            const Header()
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 350,
                maxHeight: 350,
                minHeight: 200,
                minWidth: 200,
              ),
              child: const Image(
                image: AssetImage('assets/image/prevent.png'),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            TextIntro(
              text1: 'Phòng ngừa ',
              text2: 'COVID-19',
              text3: ' và giúp',
              text4: 'kết thúc đại dịch',
              text5: 'Bảo vệ bản thân và những người xung quanh',
              text6: 'bằng cách tiêm ngừa vaccine ',
              text7: 'COVID-19 ',
              text8: 'ngay hôm nay',
            ),
            const SizedBox(height: 50),
            ButtonBlue(
              horizontal: 250.0,
              vertical: 48.0,
              text: 'Đăng nhập',
              buttonFunction: () => onLogin(context),
              colorbg: colorScheme.primary,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
