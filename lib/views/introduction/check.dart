import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/views/components/app_bar.dart';
import 'package:vaccination/views/components/button_blue.dart';
import 'package:vaccination/views/components/text_intro.dart';

class Check extends StatelessWidget {
  void onPressed(BuildContext context) {
    Navigator.pushNamed(context, '/free');
  }

  void onLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => onPressed(context),
                  icon: Text(
                    'Next',
                    style: Theme.of(context).textTheme.bodyText2!.merge(
                          TextStyle(color: colorScheme.primary),
                        ),
                  ),
                ),
              ],
            ),
            const Header()
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/image/check.png'),
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
            TextIntro(
              text1: 'Check for the closest ',
              text2: 'COVID-19',
              text3: ' approved centres',
              text4: 'close to your location',
              text5: 'Worry no more about what clinic',
              text6: ' offers the',
              text7: 'COVID-19 ',
              text8: 'vaccine you want.',
            ),
            Text('check with your with your device and scehdule an appointment',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2!.merge(
                      const TextStyle(
                        fontSize: 18,
                      ),
                    )),
            const SizedBox(height: 50),
            ButtonBlue(
              horizontal: 250.0,
              vertical: 48.0,
              text: 'Get Started',
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
