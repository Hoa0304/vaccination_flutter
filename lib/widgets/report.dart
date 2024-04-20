import 'package:flutter/material.dart';
import 'package:vaccination/theme/theme.dart';

class Report extends StatelessWidget {
  const Report({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
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
                      const Text(
                        "Hi, Oyinda",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.waving_hand_sharp,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: const Text(
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
                            color: colorScheme.primary,
                          )),
                      Text(
                        "Emergency !",
                        style: TextStyle(color: colorScheme.onPrimary),
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
                            color: colorScheme.onPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        " COVID-19",
                        style: TextStyle(
                            color: colorScheme.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(" case to report ?",
                          style: TextStyle(
                              color: colorScheme.onPrimary,
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
                        child: const Text(
                          "Call Now",
                          softWrap: false,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(150, 30),
                              backgroundColor: colorScheme.error,
                              foregroundColor: colorScheme.onPrimary),
                          onPressed: () {},
                          child: const Text(
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
