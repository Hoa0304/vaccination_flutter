import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vaccination.ng',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .merge(const TextStyle(fontSize: 20, height: 1)),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 78,
                height: 3,
                color: Colors.cyan,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
