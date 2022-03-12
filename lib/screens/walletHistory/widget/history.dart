import 'package:bank/sharedwidgit/button2.dart';
import 'package:bank/sharedwidgit/row.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

Widget history(BuildContext context) {
  return Stack(fit: StackFit.loose, overflow: Overflow.visible, children: [
    SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
            child: Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Column(
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
                          style:
                              TextStyle(color: Color(0xff707273), fontSize: 19),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16, left: 16.0, right: 16, bottom: 8),
                    child: Row(
                      children: [
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
                        const Text("\$  45.99",
                            style: TextStyle(color: Color(0xff95989A))),
                        Image.asset(
                          "assets/arrow.png",
                          scale: .6,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 15, bottom: 8),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 16, left: 16, bottom: 8),
                    child: Row(
                      children: [
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
                    padding:
                        const EdgeInsets.only(left: 30, right: 15, bottom: 8),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 16, left: 16, bottom: 8),
                    child: Row(
                      children: [
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
                        const Text("\$ 499.99",
                            style: TextStyle(color: Color(0xff95989A))),
                        Image.asset(
                          "assets/arrow.png",
                          scale: .6,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 15, bottom: 8),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 16, left: 16, bottom: 8),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15, right: 40),
                          child: Text("29 Sep. 17",
                              style: TextStyle(color: Color(0xff95989A))),
                        ),
                        const Text("Cash Desk Deposit",
                            style: TextStyle(color: Color(0xff95989A))),
                        Expanded(
                          child: Container(),
                        ),
                        const Text("\$ 300.00",
                            style: TextStyle(color: Color(0xff95989A))),
                        Image.asset(
                          "assets/arrow.png",
                          scale: .6,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 15, bottom: 8),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  const roooooow(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 15, bottom: 8),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  const roooooow(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 15, bottom: 8),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  roooooow(),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 15, bottom: 8),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  roooooow(),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 15, bottom: 8),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  const roooooow(),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 15, bottom: 8),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  roooooow(),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 15, bottom: 8),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  roooooow()
                ],
              ),
            ),
          )
        ],
      ),
    ),
    Positioned(
        bottom: 0,
        child: Stack(
          children: [
            Container(
                child: SfSparkLineChart(
              axisLineColor: Colors.white,
              data: <double>[
                1,
                5,
                -6,
                0,
                1,
                -2,
                7,
                -7,
                -4,
                -10,
                13,
                -6,
                7,
                5,
                11,
                5,
                3
              ],
            )),
            // Image.asset(
            //   "assets/chart.png",
            //   scale: .8,
            // ),
            Positioned(
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 85,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 8,
                            blurRadius: 6,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: const [
                          Center(
                            child: Text(
                              "\$ 4,543.87",
                              style: TextStyle(
                                  color: Color(0xff707273), fontSize: 13),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "29 Sep. 17",
                              style: TextStyle(
                                  color: Color(0xff707273), fontSize: 8),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: button2(
                          namebutton: "More Details", ontappress: () {}),
                    )
                  ],
                ))
          ],
        )),
  ]);
}
