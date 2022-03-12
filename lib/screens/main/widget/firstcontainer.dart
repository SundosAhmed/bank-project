import 'package:flutter/material.dart';

Widget firstcontainer() {
  return Stack(
    alignment: AlignmentDirectional.topCenter,
    fit: StackFit.loose,
    overflow: Overflow.visible,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Container(
          width: 370.39,
          height: 140,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: const [
                Text(
                  "Hello John Doe!",
                  style: TextStyle(color: Color(0xff777879), fontSize: 25),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Last Login: 10:33 AM, 28.09.2017",
                  style: TextStyle(color: Color(0xffAEB1B3), fontSize: 11),
                ),
              ],
            ),
          ),
        ),
      ),
      Positioned(
          top: -50,
          child: Image.asset(
            "assets/person.png",
          )),
    ],
  );
}
