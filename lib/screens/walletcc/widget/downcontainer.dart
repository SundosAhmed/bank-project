import 'package:bank/screens/walletHistory/wallethistory.dart';
import 'package:bank/sharedwidgit/button2.dart';

import 'package:flutter/material.dart';

Widget downcontainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 16),
    child: Container(
      height: 297,
      width: 371,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white),
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 80),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/clock.png",
                      scale: .9,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "History of Transactions",
                      style: TextStyle(color: Color(0xff707273), fontSize: 19),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16.0, right: 16),
                child: Row(
                  children: [
                    Image.asset("assets/zara.png"),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 40),
                      child: Text(
                        "29 Sep. 17",
                        style: TextStyle(color: Color(0xff95989A)),
                      ),
                    ),
                    const Text("ZARA Mall Sof...",
                        style: TextStyle(color: Color(0xff95989A))),
                    Expanded(
                      child: Container(),
                    ),
                    const Text("\$ 76.45",
                        style: TextStyle(color: Color(0xff95989A))),
                    Image.asset(
                      "assets/arrow.png",
                      scale: .6,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 15),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/reve.png",
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 40),
                      child: Text("29 Sep. 17",
                          style: TextStyle(color: Color(0xff95989A))),
                    ),
                    const Text("REWE N23 Sof...",
                        style: TextStyle(color: Color(0xff95989A))),
                    Expanded(
                      child: Container(),
                    ),
                    const Text("\$ 49.99",
                        style: TextStyle(color: Color(0xff95989A))),
                    Image.asset(
                      "assets/arrow.png",
                      scale: .6,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 15),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/nike.png",
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 40),
                      child: Text("29 Sep. 17",
                          style: TextStyle(color: Color(0xff95989A))),
                    ),
                    const Text("Nike Town Sof...",
                        style: TextStyle(color: Color(0xff95989A))),
                    Expanded(
                      child: Container(),
                    ),
                    const Text("\$ 109.99",
                        style: TextStyle(color: Color(0xff95989A))),
                    Image.asset(
                      "assets/arrow.png",
                      scale: .6,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 15),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: Row(
                  children: [
                    Image.asset("assets/marka.png"),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 40),
                      child: Text("29 Sep. 17",
                          style: TextStyle(color: Color(0xff95989A))),
                    ),
                    const Text("Carrefour Sofia...",
                        style: TextStyle(color: Color(0xff95989A))),
                    Expanded(
                      child: Container(),
                    ),
                    const Text("\$ 15.33",
                        style: TextStyle(color: Color(0xff95989A))),
                    Image.asset(
                      "assets/arrow.png",
                      scale: .6,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              button2(
                  namebutton: "View Transactions",
                  ontappress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WalletHistoey()));
                  })
            ],
          ),
        ],
      ),
    ),
  );
}
