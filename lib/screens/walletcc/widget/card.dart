import 'package:flutter/material.dart';

Widget card(AssetImage) {
  return Container(
    width: 80,
    height: 170,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Colors.white,
            Color(0xffD9D9D9),
          ]),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 17, right: 17),
          child: Image.asset(AssetImage),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "3455  6587  7854  4589",
                style: TextStyle(
                  color: Color(0xff95989A),
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: const Padding(
            padding: EdgeInsets.only(left: 59),
            child: Text(
              "02/18",
              style: TextStyle(
                color: Color(0xff95989A),
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget cardView(int index) {
  if (index == 0) {
    return card("assets/visa.png");
  } else if (index == 1) {
    return card("assets/master.png");
  } else {
    return card("assets/master.png");
  }
}
