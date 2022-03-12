import 'package:flutter/material.dart';

import '../../../sharedwidgit/button2.dart';
import '../../walletcc/walletcc.dart';

Widget lastconyainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 16),
    child: Container(
      height: 330,
      width: 371,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 100),
            child: Row(
              children: [
                Stack(
                  fit: StackFit.loose,
                  overflow: Overflow.visible,
                  children: [
                    Image.asset(
                      "assets/massage.png",
                      scale: .7,
                    ),
                    Positioned(
                        top: -15,
                        left: 10,
                        child: Image.asset(
                          "assets/navigation.png",
                          scale: .8,
                        )),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Messages",
                  style: TextStyle(color: Color(0xff707273), fontSize: 19),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset("assets/lock.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 60),
                  child: Text(
                    "Remote Access Scam",
                    style: TextStyle(color: Color(0xff95989A), fontSize: 15),
                  ),
                ),
                const Text(
                  "9:33 am, 26 Sep. 17",
                  style: TextStyle(color: Color(0xff95989A), fontSize: 11),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 47, right: 25),
            child: Text(
              "The banking industry has seen an increase in customers and businesses receiving cold calls from...",
              style: TextStyle(color: Color(0xff95989A), fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 16.0,
              left: 16,
              top: 8,
            ),
            child: Divider(thickness: 1, color: Colors.grey.shade200),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset("assets/ipan.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 26),
                  child: Text(
                    "Where can I find my IBAN?",
                    style: TextStyle(color: Color(0xff95989A), fontSize: 15),
                  ),
                ),
                const Text(
                  "11:45 am, 24 Sep. 17",
                  style: TextStyle(color: Color(0xff95989A), fontSize: 11),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 47, right: 12),
            child: Text(
              "You can find your IBAN and BIC, on your account on Online Banking or your account statement...",
              style: TextStyle(color: Color(0xff95989A), fontSize: 12),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          button2(
            namebutton: "View More",
            ontappress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Walletcc()));
            },
          )
        ],
      ),
    ),
  );
}
