import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vaccination/providers/weather_provider.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/bottom_bar.dart';
import 'package:vaccination/widgets/button_blue.dart';
import 'package:vaccination/widgets/input.dart';
import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';

class AddSchedule extends StatefulWidget {
  @override
  _AddScheduleState createState() => _AddScheduleState();
}

class _AddScheduleState extends State<AddSchedule> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final messageController = TextEditingController();
  bool female = false;
  bool male = false;
  bool modena = false;
  bool pfizer = false;
  bool astraZeneca = false;
  bool sinovac = false;
  String selectedOption = 'Trung tâm y tế quận Ngũ Hành Sơn';

  void _openDatePicker(BuildContext context) {
    BottomPicker.date(
      pickerTitle: Text(
        'Set your Birthday',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: colorScheme.primary,
        ),
      ),
      initialDateTime: DateTime(2004, 04, 03),
      maxDateTime: DateTime(2024),
      minDateTime: DateTime(1980),
      pickerTextStyle: TextStyle(
        color: colorScheme.primary,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      onChange: (index) {
        print(index);
      },
      onSubmit: (index) {
        print(index);
      },
      bottomPickerTheme: BottomPickerTheme.plumPlate,
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Book an appointment",
                style: Theme.of(context).textTheme.bodyText1!.merge(
                      TextStyle(
                        color: colorScheme.shadow,
                        fontSize: 20,
                      ),
                    ),
                textAlign: TextAlign.center, // Canh giữa chữ
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            )
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 50, top: 10, right: 50),
        children: [
          Input(
            text: 'Name',
            controller: nameController,
            hintText: 'Your name',
            obscureText: false,
            maxwidth: 300,
            maxHeight: 50,
            suffixIcon: Image.asset('assets/icons/user.png'),
          ),
          Input(
            text: 'Email',
            controller: nameController,
            hintText: 'Your email',
            obscureText: false,
            maxwidth: 300,
            maxHeight: 50,
            suffixIcon: Icon(
              Icons.email_outlined,
              color: colorScheme.onSecondary,
            ),
          ),
          Input(
            text: 'Address',
            controller: nameController,
            hintText: 'Your address',
            obscureText: false,
            maxwidth: 300,
            maxHeight: 50,
            suffixIcon: Icon(
              Icons.location_history_outlined,
              color: colorScheme.onSecondary,
            ),
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
                          'assets/icons/twemoji_flag.png',
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
                        hintStyle: Theme.of(context).textTheme.bodyText2!.merge(
                              TextStyle(
                                fontSize: 15,
                                color: colorScheme.onSecondary,
                              ),
                            ),
                        contentPadding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        constraints:
                            const BoxConstraints(maxWidth: 350, maxHeight: 50),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Date of birth',
                style: Theme.of(context).textTheme.bodyText2!.merge(
                      TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: colorScheme.shadow),
                    ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          TextButton.icon(
            onPressed: () {
              _openDatePicker(context);
            },
            icon: Icon(
              Icons.calendar_today,
              size: 25.0,
              color: colorScheme.secondary,
            ),
            label: Text(
              'YYYY/MM/DD',
              style: TextStyle(color: colorScheme.onSecondary, fontSize: 14),
            ),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              side: BorderSide(
                color: colorScheme.primary,
                width: 2, // Độ rộng viền
              ),
              backgroundColor: colorScheme.onPrimary,
              fixedSize: const Size(285.0, 50.0),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          DropdownButton<String>(
            value: selectedOption,
            onChanged: (String? newValue) {
              setState(() {
                selectedOption = newValue!;
              });
            },
            items: <String>[
              'Trung tâm y tế quận Ngũ Hành Sơn',
              'Trung tâm Y tế quận Liên Chiểu',
              'Trung tâm Y tế quận Thanh Khê',
              // Thêm các tùy chọn khác ở đây
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Sex',
            style: Theme.of(context).textTheme.bodyText2!.merge(
                  TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.shadow),
                ),
          ),
          Row(
            children: [
              Checkbox(
                value: female,
                visualDensity: VisualDensity.compact,
                activeColor: colorScheme.primary,
                onChanged: (bool? value) {
                  setState(
                    () {
                      female = value ?? false;
                    },
                  );
                },
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return colorScheme.primary; // Màu nền khi được chọn
                  }
                  return colorScheme
                      .onBackground; // Màu nền khi không được chọn
                }),
                side: MaterialStateBorderSide.resolveWith((states) {
                  if (states.contains(MaterialState.selected)) {
                    return BorderSide(color: colorScheme.primary, width: 2.0);
                  }
                  return BorderSide(
                      color: colorScheme.onBackground, width: 2.0);
                }),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              Text(
                'Female',
                style: TextStyle(
                  fontSize: 15,
                  color: colorScheme.shadow,
                ),
              ),
              const SizedBox(
                width: 70,
              ),
              Checkbox(
                value: male,
                visualDensity: VisualDensity.compact,
                activeColor: colorScheme.primary,
                onChanged: (bool? value) {
                  setState(
                    () {
                      male = value ?? false;
                    },
                  );
                },
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return colorScheme.primary; // Màu nền khi được chọn
                  }
                  return colorScheme
                      .onBackground; // Màu nền khi không được chọn
                }),
                side: MaterialStateBorderSide.resolveWith((states) {
                  if (states.contains(MaterialState.selected)) {
                    return BorderSide(color: colorScheme.primary, width: 2.0);
                  }
                  return BorderSide(
                      color: colorScheme.onBackground, width: 2.0);
                }),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              Text(
                'Male',
                style: TextStyle(
                  fontSize: 15,
                  color: colorScheme.shadow,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Vaccine Type',
            style: Theme.of(context).textTheme.bodyText2!.merge(
                  TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.shadow),
                ),
          ),
          Row(
            children: [
              Checkbox(
                value: modena,
                visualDensity: VisualDensity.compact,
                activeColor: colorScheme.primary,
                onChanged: (bool? value) {
                  setState(
                    () {
                      modena = value ?? false;
                    },
                  );
                },
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return colorScheme.primary; // Màu nền khi được chọn
                  }
                  return colorScheme
                      .onBackground; // Màu nền khi không được chọn
                }),
                side: MaterialStateBorderSide.resolveWith((states) {
                  if (states.contains(MaterialState.selected)) {
                    return BorderSide(color: colorScheme.primary, width: 2.0);
                  }
                  return BorderSide(
                      color: colorScheme.onBackground, width: 2.0);
                }),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              Text(
                'Modena',
                style: TextStyle(
                  fontSize: 15,
                  color: colorScheme.shadow,
                ),
              ),
              const SizedBox(
                width: 63,
              ),
              Checkbox(
                value: pfizer,
                visualDensity: VisualDensity.compact,
                activeColor: colorScheme.primary,
                onChanged: (bool? value) {
                  setState(
                    () {
                      pfizer = value ?? false;
                    },
                  );
                },
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return colorScheme.primary; // Màu nền khi được chọn
                  }
                  return colorScheme
                      .onBackground; // Màu nền khi không được chọn
                }),
                side: MaterialStateBorderSide.resolveWith((states) {
                  if (states.contains(MaterialState.selected)) {
                    return BorderSide(color: colorScheme.primary, width: 2.0);
                  }
                  return BorderSide(
                      color: colorScheme.onBackground, width: 2.0);
                }),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              Text(
                'Pfizer',
                style: TextStyle(
                  fontSize: 15,
                  color: colorScheme.shadow,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: astraZeneca,
                visualDensity: VisualDensity.compact,
                onChanged: (bool? value) {
                  setState(
                    () {
                      astraZeneca = value ?? false;
                    },
                  );
                },
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return colorScheme.primary; // Màu nền khi được chọn
                  }
                  return colorScheme
                      .onBackground; // Màu nền khi không được chọn
                }),
                side: MaterialStateBorderSide.resolveWith((states) {
                  if (states.contains(MaterialState.selected)) {
                    return BorderSide(color: colorScheme.primary, width: 2.0);
                  }
                  return BorderSide(
                      color: colorScheme.onBackground, width: 2.0);
                }),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              Text(
                'AstraZeneca',
                style: TextStyle(
                  fontSize: 15,
                  color: colorScheme.shadow,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Checkbox(
                value: sinovac,
                visualDensity: VisualDensity.compact,
                activeColor: colorScheme.primary,
                onChanged: (bool? value) {
                  setState(
                    () {
                      sinovac = value ?? false;
                    },
                  );
                },
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return colorScheme.primary; // Màu nền khi được chọn
                  }
                  return colorScheme
                      .onBackground; // Màu nền khi không được chọn
                }),
                side: MaterialStateBorderSide.resolveWith((states) {
                  if (states.contains(MaterialState.selected)) {
                    return BorderSide(color: colorScheme.primary, width: 2.0);
                  }
                  return BorderSide(
                      color: colorScheme.onBackground, width: 2.0);
                }),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              Text(
                'Sinovac',
                style: TextStyle(
                  fontSize: 15,
                  color: colorScheme.shadow,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: TextField(
              controller: messageController,
              obscureText: false,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 14, // Kích thước chữ mặc định
                  ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: colorScheme.primary, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: colorScheme.primary, width: 2.0),
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Leave a message',
                hintStyle: Theme.of(context).textTheme.bodyText2!.merge(
                      TextStyle(
                        fontSize: 15,
                        color: colorScheme.onSecondary,
                      ),
                    ),
                contentPadding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                constraints: const BoxConstraints(
                  maxWidth: 350,
                  maxHeight: 150,
                ),
              ),
              maxLines: 10,
              minLines: 5,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonBlue(
                horizontal: 120,
                vertical: 50,
                text: 'Cancel',
                buttonFunction: () {},
                colorbg: colorScheme.onPrimary,
                textColor: Color(0xFF7E7F80),
              ),
              ButtonBlue(
                horizontal: 130,
                vertical: 50,
                text: 'Register',
                buttonFunction: () {},
                colorbg: colorScheme.primary,
                textColor: colorScheme.onPrimary,
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
      bottomNavigationBar: _bottomBar(context),
      floatingActionButton: _floatingActionButton(context),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

Widget _bottomBar(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      left: 20,
      right: 20,
      bottom: 10,
    ),
    width: 350,
    height: 60,
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    decoration: BoxDecoration(
      color: colorScheme.onSurface,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: BottomBar(
            imagePath: 'assets/icons/home.png',
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
        ),
        Expanded(
          child: BottomBar(
            imagePath: 'assets/icons/clipboard_blue.png',
            onTap: () {},
          ),
        ),
        Expanded(
          child: BottomBar(
            imagePath: 'assets/icons/cloud_blue.png',
            onTap: () {
              context.read<WeatherProvider>().getWeatherCurrent();
              Navigator.pushNamed(context, '/weather');
            },
          ),
        ),
        Expanded(
          child: BottomBar(
            imagePath: 'assets/icons/userr.png',
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ),
      ],
    ),
  );
}

Widget _floatingActionButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 50.0),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Transform.rotate(
        angle: 3 * 3.14159 / 4, // Xoay 135 độ
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: colorScheme.primary,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Transform.rotate(
              angle: -3.14159 / 1.3,
              child: Image.asset('assets/icons/clock.png'),
            ),
          ),
        ),
      ),
    ),
  );
}
