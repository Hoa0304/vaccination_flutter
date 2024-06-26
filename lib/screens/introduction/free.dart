import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/app_bar.dart';
import 'package:vaccination/widgets/button_blue.dart';
import 'package:vaccination/widgets/text_intro.dart';

class Free extends StatelessWidget {
  void onPressed(BuildContext context) {
    Navigator.pushNamed(context, '/test');
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
              image: AssetImage('assets/image/free.png'),
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
            TextIntro(
              text1: 'Truy cập miễn phí yêu cầu chứng chỉ',
              text2: 'COVID-19',
              text3: ' của bạn',
              text4: 'nhanh chóng thông qua trực tuyến',
              text5: 'Yêu cầu chứng chỉ ',
              text6: 'vaccine ',
              text7: 'COVID-19 ',
              text8: 'của bạn trực tuyến và nó được xử lý và nhận',
            ),
            Text('hoàn toàn trực tuyến.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2!.merge(
                      const TextStyle(
                        fontSize: 15,
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
