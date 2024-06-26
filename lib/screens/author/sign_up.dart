import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:vaccination/app/utils/asset.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:vaccination/widgets/app_bar.dart';
import 'package:vaccination/widgets/button_blue.dart';
import 'package:vaccination/widgets/input.dart';
import 'package:vaccination/widgets/text_intro.dart';
import 'package:http/http.dart' as http;

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  void onPressed(BuildContext context) {
    Navigator.pushNamed(context, '/signup');
  }

  @override
  void dispose() {
    nameController.dispose();
    usernameController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmController.dispose();
    super.dispose();
  }

  addUser() {
    var url = 'http://${API_K.url}/addUser.php';
    http.post(Uri.parse(url), body: {
      'name': nameController.text,
      'email': usernameController.text,
      'phone': phoneController.text,
      'password': passwordController.text,
      'address': addressController.text,
    });
    print(nameController.text);
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
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding:
                const EdgeInsets.only(top: 30, bottom: 0, left: 35, right: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Đăng ký',
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
                  text: 'Tên',
                  controller: nameController,
                  hintText: 'Nhập tên của bạn',
                  obscureText: false,
                  suffixIcon: Image.asset('assets/icons/user.png'),
                  maxwidth: 350,
                  maxHeight: 50,
                ),
                Input(
                  text: 'E-mail',
                  controller: usernameController,
                  hintText: 'Nhập email của bạn',
                  obscureText: false,
                  suffixIcon: Image.asset('assets/icons/mail.png'),
                  maxwidth: 350,
                  maxHeight: 50,
                ),
                Input(
                  text: 'Địa chỉ',
                  controller: addressController,
                  hintText: 'Nhập địa chỉ của bạn',
                  obscureText: false,
                  suffixIcon: Icon(Icons.location_disabled),
                  maxwidth: 350,
                  maxHeight: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Căn cước công dân',
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
                                'assets/icons/vietnam.png',
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
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            controller: phoneController,
                            obscureText: false,
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      fontSize: 14,
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
                  text: 'Mật khẩu',
                  controller: passwordController,
                  hintText: 'Hãy đặt mật khẩu',
                  obscureText: true,
                  suffixIcon: Image.asset('assets/icons/lock.png'),
                  maxwidth: 350,
                  maxHeight: 50,
                ),
                Input(
                  text: 'Nhập lại mật khẩu',
                  controller: confirmController,
                  hintText: 'Nhập lại mật khẩu',
                  obscureText: true,
                  suffixIcon: Image.asset('assets/icons/lock.png'),
                  maxwidth: 350,
                  maxHeight: 50,
                ),
                ButtonBlue(
                  horizontal: 350.0,
                  vertical: 50.0,
                  text: 'Đăng ký',
                  buttonFunction: _signUp,
                  colorbg: colorScheme.primary,
                  textColor: Colors.white,
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ));
  }

  void _signUp() async {
    String name = nameController.text;
    String username = usernameController.text;
    String phone = phoneController.text;
    String password = passwordController.text;
    String confirm = confirmController.text;
    if (password != confirm) {
      showSnackBar("Not match");
      return;
    } else {
      User? user =
          await _auth.signUpWithEmailAndPassword(name, username, password);

      if (user != null) {
        print("Created user ");
        setState(() {
          addUser();
        });
        sendEmail(username);
        Navigator.pushNamed(context, "/home");
      } else {
        print("Error to create user");
      }
    }
  }

  void sendEmail(String mails) async {
    String username = 'dd01object@gmail.com';
    String password = 'vjrihzoqjqamzgbi';
    final smtpServer = gmail(username, password);

    final message = Message()
      ..from = Address(username)
      ..recipients.add('' + mails)
      ..subject = 'Vaccination.ng notifications'
      ..text =
          'You have successfully signed up for Vaccination. You can log in now to use your new account';

    try {
      final sendReport = await send(message, smtpServer);
      print("Message sent: " + sendReport.toString());
    } catch (e) {
      print("error send mail: " + e.toString());
    }
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      action: SnackBarAction(label: "Close", onPressed: () {}),
    ));
  }
}
