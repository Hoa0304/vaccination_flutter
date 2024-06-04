import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/button_blue.dart';
import 'package:vaccination/widgets/input.dart';

class Hospital extends StatefulWidget {
  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  TextEditingController searchController = TextEditingController();
  void onLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: colorScheme.primary,
                  width: 0.5,
                ),
              ),
              padding: const EdgeInsets.only(left: 5),
              width: 30,
              height: 30,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ),
            const Text(
              "Hospital",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: colorScheme.primary,
                  width: 0.5,
                ),
              ),
              width: 30,
              height: 30,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.notifications_none,
                  size: 20,
                ),
                onPressed: () {},
              ),
            ),
          ],
        )),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FormBuilderTextField(
              name: '',
              controller: searchController,
              obscureText: false,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 15,
                  ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                      BorderSide(color: colorScheme.primary, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: colorScheme.primary,
                    width: 2.0,
                  ),
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Search Places, Clinics, and more...',
                hintStyle: Theme.of(context).textTheme.bodyText2!.merge(
                      TextStyle(
                        fontSize: 16,
                        color: colorScheme.onSecondary,
                      ),
                    ),
                contentPadding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                suffixIcon: Icon(
                  Icons.search_sharp,
                  color: colorScheme.primary,
                  size: 30,
                ),
                constraints: BoxConstraints(
                  maxWidth: 350,
                  maxHeight: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Recent searches',
                  style: Theme.of(context).textTheme.bodyText1!.merge(
                        TextStyle(
                          color: colorScheme.shadow,
                          fontSize: 18,
                        ),
                      ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFF808080),
                      width: 2.0,
                    ),
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.close,
                      size: 15,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: colorScheme.background,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Ojo, Lagos',
                    style: Theme.of(context).textTheme.bodyText2!.merge(
                          TextStyle(
                            fontSize: 15,
                            color: colorScheme.shadow,
                          ),
                        ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: colorScheme.background,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Festac, Lagos',
                    style: Theme.of(context).textTheme.bodyText2!.merge(
                          TextStyle(
                            fontSize: 15,
                            color: colorScheme.shadow,
                          ),
                        ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: colorScheme.background,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Jolt, Clinic',
                    style: Theme.of(context).textTheme.bodyText2!.merge(
                          TextStyle(
                            fontSize: 15,
                            color: colorScheme.shadow,
                          ),
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Số lượng phần tử trong ListView
                itemBuilder: (context, index) {
                  return Container(
                    constraints: BoxConstraints(
                        maxHeight: 150,
                        minHeight: 100,
                        maxWidth: 350,
                        minWidth: 300),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colorScheme.background,
                    ),
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                    child: Row(
                      children: [
                        // Hình ảnh
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/image/giltol.png',
                            width: 100,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // Chữ và nút
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Giltol General Hospital',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .merge(
                                      TextStyle(
                                        fontSize: 16.0,
                                        color: colorScheme.shadow,
                                      ),
                                    ),
                              ),
                              Text(
                                'Badagry, Lagos',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .merge(
                                      TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text(
                                      '(4.2)',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .merge(
                                            TextStyle(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.normal,
                                              color: colorScheme.shadow,
                                            ),
                                          ),
                                    ),
                                  ),
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) {
                                        int iconSize = 18;
                                        return buildIconWithSize(iconSize);
                                      },
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 8, left: 7),
                                    child: Text(
                                      '263',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .merge(
                                            TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              color: colorScheme.shadow,
                                            ),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 1,
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  fixedSize: Size(200, 20),
                                  backgroundColor: colorScheme.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/info');
                                },
                                child: Text(
                                  'See more',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .merge(
                                        TextStyle(
                                          fontSize: 18,
                                          color: colorScheme.onPrimary,
                                        ),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildIconWithSize(int size) {
  return SizedBox(
    width: size.toDouble(),
    height: size.toDouble(),
    child: Icon(
      Icons.star_border_purple500_rounded,
      color: Color(0xFFE4BB27),
    ),
  );
}
