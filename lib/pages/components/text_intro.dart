import 'package:flutter/material.dart';

class TextIntro extends StatelessWidget {
  var text1;
  var text2;
  var text3;
  var text4;
  var text5;
  var text6;
  var text7;
  var text8;
  TextIntro({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6,
    required this.text7,
    required this.text8,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          Text(
            text1,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            text2,
            style: Theme.of(context).textTheme.bodyText1!.merge(
                  const TextStyle(color: Colors.cyan),
                ),
          ),
          Text(
            text3,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            text4,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(height: 60),
          Text(
            text5,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Text(
            text6,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Text(
            text7,
            style: Theme.of(context).textTheme.bodyText2!.merge(
                  const TextStyle(color: Colors.cyan),
                ),
          ),
          Text(
            text8,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
