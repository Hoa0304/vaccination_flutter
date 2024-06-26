import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/app_bar.dart';
import 'package:vaccination/widgets/button_blue.dart';
import 'package:vaccination/widgets/text_intro.dart';

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
              image: AssetImage('assets/image/check.png'),
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            TextIntro(
              text1: 'Kiểm tra những trung tâm tiêm chủng',
              text2: 'COVID-19',
              text3: ' được phê duyệt gần nhất',
              text4: 'ở khu vực của bạn',
              text5: 'Không còn phải lo lắng về việc những phòng khám',
              text6: 'nào đang cung cấp loại vaccine ',
              text7: 'COVID-19 ',
              text8: 'mà bạn muốn.',
            ),
            Text('Hãy kiểm tra trên thiết bị của bạn và đặt lịch hẹn',
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
