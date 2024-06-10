import 'package:flutter/material.dart';
import 'package:vaccination/screens/features/hospital.dart';
import 'package:vaccination/theme/theme.dart';
import 'package:vaccination/widgets/button_blue.dart';
import 'package:vaccination/widgets/text_button.dart';

class InfoHospital extends StatelessWidget {
  const InfoHospital({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                    Navigator.pushNamed(context, '/hospital');
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
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/mega.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: const MyDraggableSheet(
            child: Column(
              children: [
                BottomSheetDummyUI(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomSheetDummyUI extends StatelessWidget {
  const BottomSheetDummyUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: colorScheme.primary, // Màu chữ
                    backgroundColor: Color(0xFFC5F0FA), // Màu nền
                    padding: EdgeInsets.only(left: 20, right: 20),
                  ),
                  child: Text('Badagry'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Badagry General Hospital,      Lagos',
              style: Theme.of(context).textTheme.bodyText2!.merge(
                    TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.shadow,
                    ),
                  ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 30,
                  color: colorScheme.primary,
                ),
                const SizedBox(width: 10),
                Text(
                  'KM 48, Badagry Exp-way, Lagos',
                  style: Theme.of(context).textTheme.bodyText1!.merge(
                        TextStyle(
                          fontSize: 18,
                          color: Color(0xFF777777),
                        ),
                      ),
                )
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    '(3.2)',
                    style: Theme.of(context).textTheme.bodyText2!.merge(
                          TextStyle(
                            fontSize: 15.0,
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
                      int iconSize = 20;
                      return buildIconWithSize(iconSize);
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 8, left: 7),
                  child: Text(
                    '23',
                    style: Theme.of(context).textTheme.bodyText2!.merge(
                          TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: colorScheme.shadow,
                          ),
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
                'Facilisis elementum nullam pellentesque non. Ullamcorper scelerisque tempus viverra condimentum. Rhoncus, justo, cursus id eget habitant vel.',
                style: Theme.of(context).textTheme.bodyText1!.merge(
                      const TextStyle(
                        fontSize: 15,
                      ),
                    )),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorScheme.primary,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.phone_callback_outlined,
                        size: 25,
                        color: colorScheme.onPrimary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Call',
                        style: Theme.of(context).textTheme.bodyText2!.merge(
                              TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: colorScheme.onPrimary,
                              ),
                            ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorScheme.onPrimary, // Màu nền xanh
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(
                        color: colorScheme.primary,
                        width: 2.0, // Độ rộng border 2 pixel
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.send_time_extension_outlined,
                        size: 25,
                        color: colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Direction',
                        style: Theme.of(context).textTheme.bodyText2!.merge(
                              TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: colorScheme.primary,
                              ),
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonBlue(
                horizontal: 350,
                vertical: 50,
                text: 'Book Appointment',
                buttonFunction: () {},
                colorbg: colorScheme.primary,
                textColor: colorScheme.onPrimary)
          ],
        ),
      ),
    );
  }
}

class MyDraggableSheet extends StatefulWidget {
  final Widget child;
  const MyDraggableSheet({super.key, required this.child});

  @override
  State<MyDraggableSheet> createState() => _MyDraggableSheetState();
}

class _MyDraggableSheetState extends State<MyDraggableSheet> {
  final sheet = GlobalKey();
  final controller = DraggableScrollableController();

  @override
  void initState() {
    super.initState();
    controller.addListener(onChanged);
  }

  void onChanged() {
    final currentSize = controller.size;
    if (currentSize <= 0.05) collapse();
  }

  void collapse() => animateSheet(getSheet.snapSizes!.first);

  void anchor() => animateSheet(getSheet.snapSizes!.last);

  void expand() => animateSheet(getSheet.maxChildSize);

  void hide() => animateSheet(getSheet.minChildSize);

  void animateSheet(double size) {
    controller.animateTo(
      size,
      duration: const Duration(milliseconds: 50),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  DraggableScrollableSheet get getSheet =>
      (sheet.currentWidget as DraggableScrollableSheet);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return DraggableScrollableSheet(
        key: sheet,
        initialChildSize: 0.1,
        maxChildSize: 0.65,
        minChildSize: 0,
        expand: true,
        snap: true,
        snapSizes: [
          60 / constraints.maxHeight,
          0.5,
        ],
        controller: controller,
        builder: (BuildContext context, ScrollController scrollController) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: colorScheme.onSecondary,
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
            ),
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                topButtonIndicator(),
                SliverToBoxAdapter(
                  child: widget.child,
                ),
              ],
            ),
          );
        },
      );
    });
  }

  SliverToBoxAdapter topButtonIndicator() {
    return SliverToBoxAdapter(
      child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
            Container(
                child: Center(
                    child: Wrap(children: <Widget>[
              Container(
                  width: 100,
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  height: 5,
                  decoration: const BoxDecoration(
                    color: Colors.black45,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  )),
            ]))),
          ])),
    );
  }
}
