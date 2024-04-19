import 'package:flutter/material.dart';
import 'package:vaccination/views/components/app_bar.dart';
import 'package:vaccination/views/components/button_blue.dart';
import 'package:vaccination/views/components/button_grey.dart';
import 'package:vaccination/views/components/input.dart';

import 'package:vaccination/theme/theme.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool rememberPassword = false;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void onPressed(BuildContext context) {
    Navigator.pushNamed(context, '/signup');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Header(),
            ),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding:
            const EdgeInsets.only(top: 50, bottom: 20, left: 35, right: 35),
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
                  Expanded(
                    child: Divider(
                      color: colorScheme.primary,
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
                  Expanded(
                    child: Divider(
                      color: colorScheme.primary,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Input(
              text: 'E-mail',
              controller: usernameController,
              hintText: 'Enter your e-mail',
              obscureText: false,
              suffixIcon: Image.asset('assets/icon/mail.png'),
              maxwidth: 350,
              maxHeight: 50,
            ),
            Input(
              text: 'Password',
              controller: passwordController,
              hintText: 'Enter your password',
              obscureText: false,
              suffixIcon: Image.asset('assets/icon/lock.png'),
              maxwidth: 350,
              maxHeight: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: rememberPassword,
                      onChanged: (bool? value) {
                        setState(() {
                          rememberPassword = value ?? false;
                        });
                      },
                      activeColor: colorScheme.primary,
                    ),
                    const Text(
                      'Remember me',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  child: Text(
                    'Forget password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            ButtonBlue(
              horizontal: 350.0,
              vertical: 50.0,
              text: 'Login',
              buttonFunction: () => onPressed(context),
              colorbg: colorScheme.primary,
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text('Do you already have an account?',
                style: Theme.of(context).textTheme.bodyText2),
            IconButton(
              onPressed: () => onPressed(context),
              icon: Text(
                'Create Account',
                style: Theme.of(context).textTheme.bodyText1!.merge(
                      TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: colorScheme.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: colorScheme.primary),
                    ),
              ),
            ),
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
