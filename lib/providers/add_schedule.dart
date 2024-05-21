import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
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

  void _openDatePicker(BuildContext context) {
    BottomPicker.date(
      pickerTitle: Text(
        'Set your Birthday',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.blue,
        ),
      ),
      initialDateTime: DateTime(1996, 10, 22),
      maxDateTime: DateTime(1998),
      minDateTime: DateTime(1980),
      pickerTextStyle: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 12,
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
                  Container(
                    width: 230,
                    child: TextField(
                      controller: phoneController,
                      obscureText: false,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontSize: 14,
                            // Kích thước chữ mặc định
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
            children: [
              TextButton(
                onPressed: () {
                  _openDatePicker(context);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 50),
                  backgroundColor: colorScheme.onPrimary,
                  side: BorderSide(
                    color: colorScheme.primary,
                    width: 2, // Độ rộng viền
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Date of birth',
                  style: Theme.of(context).textTheme.bodyText2!.merge(
                        TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: colorScheme.shadow),
                      ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    'Message',
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Input(
            controller: messageController,
            hintText: 'Leave a message',
            obscureText: false,
            maxwidth: 350,
            maxHeight: 300,
          ),
        ],
      ),
    );
  }
}
