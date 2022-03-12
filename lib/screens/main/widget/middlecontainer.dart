import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget middlecontainer() {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 16),
    child: Container(
      width: 370.39,
      height: 165,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
            colors: [
              Color(0xff2189BC),
              Color(0xff0A496A),
            ],
          ),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 5),
            child: Text(
              "Bank Accounts",
              style: TextStyle(color: Color(0xff85C3EC), fontSize: 17),
            ),
          ),
          const Text(
            "2 Active Accounts",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 8, top: 8),
            child: Divider(
              thickness: 1,
              color: Color(0xff298DAC),
            ),
          ),
          const Text(
            "Accounting Balance",
            style: TextStyle(color: Color(0xff85C3EC), fontSize: 17),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/dot.png",
                scale: .8,
              ),
              const SizedBox(
                width: 16,
              ),
              const Text(
                "\$ 6,328.33",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
