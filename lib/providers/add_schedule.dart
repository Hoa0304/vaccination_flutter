import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/input.dart';

class AddSchedule extends StatefulWidget {
  @override
  _AddScheduleState createState() => _AddScheduleState();
}

class _AddScheduleState extends State<AddSchedule> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Schedule"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          Input(
            text: 'Name',
            controller: nameController,
            hintText: 'Enter the appointment name',
            obscureText: false,
            maxwidth: 350,
            maxHeight: 50,
          ),
          Input(
            text: 'Address',
            controller: nameController,
            hintText: 'Enter the appointment address',
            obscureText: false,
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
          Input(
            controller: messageController,
            hintText: 'Leave a message',
            obscureText: false,
            maxwidth: 350,
            maxHeight: 200,
          ),
        ],
      ),
    );
  }
}
