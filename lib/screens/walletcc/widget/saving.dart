import 'package:bank/screens/walletcc/widget/card2.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'containerdown2.dart';
import 'downcontainer.dart';

Widget saving() {
  return Stack(
    alignment: AlignmentDirectional.topCenter,
    fit: StackFit.loose,
    overflow: Overflow.visible,
    children: [
      Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 370,
            height: 230,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Availible Balance",
                    style: TextStyle(color: Color(0xffAEB1B3), fontSize: 17),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset("assets/dot.png"),
                      ),
                      const Text(
                        "\$4,543.87",
                        style:
                            TextStyle(color: Color(0xff707273), fontSize: 30),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          downcontainer2(),
        ],
      ),
      Positioned(top: 15, child: card2()),
    ],
  );
}
