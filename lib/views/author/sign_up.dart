import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/views/components/app_bar.dart';
import 'package:vaccination/views/components/button_blue.dart';
import 'package:vaccination/views/components/input.dart';
import 'package:vaccination/views/components/text_intro.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

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
        padding: const EdgeInsets.only(top: 30, bottom: 0, left: 35, right: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Sign-up Page',
                style: Theme.of(context).textTheme.bodyText1!.merge(
                      TextStyle(
                        fontSize: 18,
                        color: colorScheme.shadow,
                      ),
                    )),
            const SizedBox(
              height: 25,
            ),
            Input(
              text: 'Name',
              controller: nameController,
              hintText: 'Your name',
              obscureText: false,
              suffixIcon: Image.asset('assets/icon/user.png'),
              maxwidth: 350,
              maxHeight: 50,
            ),
            Input(
              text: 'E-mail',
              controller: usernameController,
              hintText: 'Your email',
              obscureText: false,
              suffixIcon: Image.asset('assets/icon/mail.png'),
              maxwidth: 350,
              maxHeight: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Phone number',
                  style: Theme.of(context).textTheme.bodyText2!.merge(
                        const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    PopupMenuButton(
                      padding: EdgeInsets.zero,
                      icon: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: colorScheme.primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/icon/twemoji_flag.png',
                            width: 24.0,
                            height: 24.0,
                          ),
                        ),
                      ),
                      onSelected: (value) {
                        // Xử lý sự kiện khi chọn một tùy chọn
                        switch (value) {
                          case 'option1':
                            // Xử lý tùy chọn 1
                            break;
                          case 'option2':
                            // Xử lý tùy chọn 2
                            break;
                          // Thêm các tùy chọn khác ở đây
                        }
                      },
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 'option1',
                          child: Text('Tùy chọn 1'),
                        ),
                        PopupMenuItem(
                          value: 'option2',
                          child: Text('Tùy chọn 2'),
                        ),
                        // Thêm các tùy chọn khác ở đây
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: phoneController,
                        obscureText: false,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 14, // Kích thước chữ mặc định
                            ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: colorScheme.primary, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: colorScheme.primary, width: 2.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: '+234 703 126 7197',
                          hintStyle:
                              Theme.of(context).textTheme.bodyText2!.merge(
                                    TextStyle(
                                      fontSize: 15,
                                      color: colorScheme.onSecondary,
                                    ),
                                  ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          constraints: const BoxConstraints(
                              maxWidth: 350, maxHeight: 50),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
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
            Input(
              text: 'Confirm Password',
              controller: confirmController,
              hintText: 'Re-enter your password',
              obscureText: false,
              suffixIcon: Image.asset('assets/icon/lock.png'),
              maxwidth: 350,
              maxHeight: 50,
            ),
            ButtonBlue(
              horizontal: 350.0,
              vertical: 50.0,
              text: 'Sign up',
              buttonFunction: () => onPressed(context),
              colorbg: colorScheme.primary,
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
