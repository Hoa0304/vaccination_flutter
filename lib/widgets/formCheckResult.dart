import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/button_blue.dart';

class formCheckResult extends StatelessWidget {
  const formCheckResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, bottom: 30),
      padding: const EdgeInsets.only(top: 20, bottom: 30, right: 20, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorScheme.onSurface,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Kết quả",
                  style: Theme.of(context).textTheme.bodyText2!.merge(
                        TextStyle(
                            color: colorScheme.onPrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                ),
                Text(
                  " COVID-19",
                  style: Theme.of(context).textTheme.bodyText2!.merge(
                        TextStyle(
                            color: colorScheme.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                ),
                Text(
                  " xét nghiệm",
                  style: Theme.of(context).textTheme.bodyText2!.merge(
                        TextStyle(
                            color: colorScheme.onPrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: colorScheme.error,
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Vui lòng nhập số Số Định danh Cá nhân (NIN)",
                labelStyle: Theme.of(context).textTheme.bodyText2!.merge(
                      TextStyle(color: Color(0xFF89A0B8), fontSize: 16),
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: colorScheme.error,
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Vui lòng nhập số liều vaccine COVID-19",
                labelStyle: Theme.of(context).textTheme.bodyText2!.merge(
                      TextStyle(color: Color(0xFF89A0B8), fontSize: 16),
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            style: TextButton.styleFrom(
              fixedSize: Size(200, 50),
              backgroundColor: colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Kiểm tra kết quả',
              style: Theme.of(context).textTheme.bodyText1!.merge(
                    const TextStyle(fontSize: 17, color: Colors.white),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
