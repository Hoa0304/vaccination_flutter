import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/views/components/app_bar.dart';
import 'package:vaccination/views/components/button_blue.dart';

class Test extends StatelessWidget {
  void onPressed(BuildContext context) {
    Navigator.pushNamed(context, '/login');
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
              image: AssetImage('assets/image/free.png'),
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
            TwoTextsInRow(
              text: 'test and analysis',
              font1: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .merge(TextStyle(color: colorScheme.primary, fontSize: 25)),
              font2: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .merge(const TextStyle(fontSize: 25)),
            ),
            Text('Worry no more about what clinic offers the ',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2!.merge(
                      const TextStyle(
                        fontSize: 18,
                      ),
                    )),
            TwoTextsInRow(
              text: 'vaccine you want.',
              font1: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .merge(TextStyle(color: colorScheme.primary, fontSize: 18)),
              font2: Theme.of(context).textTheme.bodyText2!.merge(
                    const TextStyle(
                      fontSize: 18,
                    ),
                  ),
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

class TwoTextsInRow extends StatelessWidget {
  final String text;
  var font1;
  var font2;

  TwoTextsInRow({
    super.key,
    required this.text,
    required this.font1,
    required this.font2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('COVID-19 ', textAlign: TextAlign.center, style: font1),
        Text(text, textAlign: TextAlign.center, style: font2),
      ],
    );
  }
}
