import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vaccination/model/Users.dart';
import 'package:vaccination/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:vaccination/widgets/app_bar.dart';
import 'package:vaccination/widgets/button_blue.dart';
import 'package:vaccination/widgets/button_grey.dart';
import 'package:vaccination/widgets/input.dart';
import 'package:http/http.dart' as http;
import 'package:vaccination/theme/theme.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  bool rememberPassword = false;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void onPressed(BuildContext context) {
    Navigator.pushNamed(context, '/signup');
  }

  void onLogin(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Header(),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding:
                const EdgeInsets.only(top: 50, bottom: 20, left: 35, right: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Đăng nhập',
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
                        child: Text("HOẶC",
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
                  hintText: 'Hãy nhập e-mail của bạn',
                  obscureText: false,
                  suffixIcon: Image.asset('assets/icons/mail.png'),
                  maxwidth: 350,
                  maxHeight: 50,
                ),
                Input(
                  text: 'Mật khẩu',
                  controller: passwordController,
                  hintText: 'Hãy nhập mật khẩu của bạn',
                  obscureText: true,
                  suffixIcon: Image.asset('assets/icons/lock.png'),
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
                          visualDensity:
                              VisualDensity(horizontal: -4.0, vertical: 0.0),
                        ),
                        const Text(
                          'Ghi nhớ đăng nhập',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      child: Text(
                        'Quên mật khẩu?',
                        style: TextStyle(
                          fontSize: 16,
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
                  buttonFunction: _signIn,
                  colorbg: colorScheme.primary,
                  textColor: Colors.white,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Bạn đã có tài khoản chưa?',
                  style: Theme.of(context).textTheme.bodyText2!.merge(
                        TextStyle(
                          fontSize: 15,
                        ),
                      ),
                ),
                IconButton(
                  onPressed: () => onPressed(context),
                  icon: Text(
                    'Đăng ký',
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
        ));
  }

  void _signIn() async {
    String username = usernameController.text;
    String password = passwordController.text;
    User? user = await _auth.signInWithEmailAndPassword(username, password);
    if (user != null) {
      print("Created user ");
      Navigator.pushNamed(context, "/home");
    } else {
      print("Error to create user");
    }
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
          image: "assets/icons/Google.png",
        ),
        const SizedBox(width: 20), // Khoảng cách giữa các nút
        ButtonGrey(
          image: "assets/icons/Facebook.png",
        ),
        const SizedBox(width: 20),
        ButtonGrey(
          image: "assets/icons/Apple.png",
        ),
        const SizedBox(width: 20),
        ButtonGrey(
          image: "assets/icons/Linked.png",
        ),
        const SizedBox(width: 20),
        ButtonGrey(
          image: "assets/icons/Twitter.png",
        ),
      ],
    );
  }
}
