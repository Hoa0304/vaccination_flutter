import 'package:flutter/material.dart';
import 'package:vaccination/pages/components/app_bar.dart';
import 'package:vaccination/pages/components/button_blue.dart';
import 'package:vaccination/pages/components/button_grey.dart';

class Login extends StatelessWidget {
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
        title: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 50), // Khoảng cách dưới cho đối tượng "Header"
              child: Header(),
            ),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding:
            const EdgeInsets.only(top: 50, bottom: 80, left: 35, right: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Login Page',
                style: Theme.of(context).textTheme.bodyText1!.merge(
                      const TextStyle(
                        fontSize: 18,
                      ),
                    )),
            const SizedBox(
              height: 25,
            ),
            const SocialNextwork(),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Color.fromARGB(255, 88, 170, 238),
                      height: 1.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("OR",
                        style: Theme.of(context).textTheme.bodyText1!.merge(
                              const TextStyle(
                                fontSize: 15,
                              ),
                            )),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Color.fromARGB(255, 87, 172, 241),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            ButtonBlue(
              horizontal: 250.0,
              vertical: 48.0,
              text: 'Get Started',
              buttonFunction: () => onPressed(context),
            )
          ],
        ),
      ),
    );
  }
}

class SocialNextwork extends StatelessWidget {
  const SocialNextwork({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.center, // Canh các nút theo trung tâm
      children: [
        ButtonGrey(
          image: "assets/icon/Google.png",
        ),
        const SizedBox(width: 20), // Khoảng cách giữa các nút
        ButtonGrey(
          image: "assets/icon/Facebook.png",
        ),
        const SizedBox(width: 20),
        ButtonGrey(
          image: "assets/icon/Apple.png",
        ),
        const SizedBox(width: 20),
        ButtonGrey(
          image: "assets/icon/Linked.png",
        ),
        const SizedBox(width: 20),
        ButtonGrey(
          image: "assets/icon/Twitter.png",
        ),
      ],
    );
  }
}
