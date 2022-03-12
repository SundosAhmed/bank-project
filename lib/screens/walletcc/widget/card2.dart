import 'package:flutter/material.dart';

Widget card2() {
  return Container(
    width: 300,
    height: 165,
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
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          child: const Center(
            child: Text(
              "Saving Account",
              style: TextStyle(
                color: Color(0xff95989A),
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: double.infinity,
          child: const Center(
            child: Text(
              "335-5437543-3-40-3",
              style: TextStyle(
                color: Color(0xff95989A),
                fontSize: 18,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, right: 20),
          child: Image.asset(
            "assets/banklogo.png",
            scale: 1,
          ),
        )
      ],
    ),
  );
}
