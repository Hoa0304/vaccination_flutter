import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/app_bar.dart';
import 'package:vaccination/widgets/button_blue.dart';

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
        automaticallyImplyLeading: false,
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
              image: AssetImage('assets/image/test.png'),
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
            TwoTextsInRow(
              text: 'Xét nghiệm và phân tích',
              font1: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .merge(TextStyle(color: colorScheme.primary, fontSize: 20)),
              font2: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .merge(const TextStyle(fontSize: 20)),
            ),
            Text(
                'Không còn phải lo lắng về việc những phòng khám nào đang cung cấp loại vaccine',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2!.merge(
                      const TextStyle(
                        fontSize: 18,
                      ),
                    )),
            TwoTextsInRow(
              text: 'mà bạn muốn.',
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
            Text('Hãy kiểm tra trên thiết bị của bạn và đặt lịch hẹn.',
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
