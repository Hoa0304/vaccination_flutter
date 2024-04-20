import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  const Report({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/headnode.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Hi, Oyinda",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.waving_hand_sharp,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    "Let's help you get vaccinated",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.info_rounded,
                            color: Colors.blue,
                          )),
                      Text(
                        "Emergency !",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Have a",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        " COVID-19",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(" case to report ?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900))
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(120, 30),
                            backgroundColor: Color.fromARGB(255, 39, 215, 255),
                            foregroundColor: Colors.white),
                        onPressed: () {},
                        child: Text(
                          "Call Now",
                          softWrap: false,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 30),
                              backgroundColor:
                                  Color.fromARGB(255, 50, 101, 140),
                              foregroundColor: Colors.white),
                          onPressed: () {},
                          child: Text(
                            "Find Centre",
                            softWrap: false,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
          // Phần body cuối cùng của bạn
        ],
      ),
    );
  }
}
