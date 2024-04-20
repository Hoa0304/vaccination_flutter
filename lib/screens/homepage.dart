import 'package:flutter/material.dart';
import 'package:vaccination/widgets/buttonFun.dart';
import 'package:vaccination/widgets/formCheckResult.dart';
import 'package:vaccination/widgets/report.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 40),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage("assets/image/avt.png"),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(color: Colors.black26, fontSize: 16),
                        ),
                        Text(
                          "Badagry Lagos, Nigeria",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Report(),
                    formCheckResult(),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "What do you need?",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      height: 500, // Đặt chiều cao cố định cho CustomScrollView
                      child: CustomScrollView(
                        slivers: <Widget>[
                          SliverPadding(
                            padding: const EdgeInsets.all(20),
                            sliver: SliverGrid.count(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              children: <Widget>[
                                ButtonFun(
                                    onPressed: () {},
                                    imagePath: "vaccine.png",
                                    btntext: "Vaccine")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
