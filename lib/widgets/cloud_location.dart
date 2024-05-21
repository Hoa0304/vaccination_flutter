import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CloudLocation extends StatelessWidget {
  const CloudLocation({super.key, required this.nameLocation});

  final String nameLocation;
  @override
  Widget build(BuildContext context) {
    final df = DateFormat('dd-MM-yyyy');
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/located.png"),
            const SizedBox(
              width: 10,
            ),
            Text(
              nameLocation,
              style: TextStyle(fontSize: 28, color: Colors.white),
            )
          ],
        ),
        SizedBox(
          height: 17,
        ),
        Text(
          df.format(DateTime.now()),
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ],
    );
  }
}
