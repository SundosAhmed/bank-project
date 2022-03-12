import 'package:flutter/material.dart';

import '../../../sharedwidgit/button2.dart';

Widget downcontainer2() {
  return Container(
    height: 302,
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
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 40),
                    child: Text(
                      "29 Sep. 17",
                      style: TextStyle(color: Color(0xff95989A)),
                    ),
                  ),
                  const Text("Salary DDX Office",
                      style: TextStyle(color: Color(0xff95989A))),
                  Expanded(
                    child: Container(),
                  ),
                  const Text("\$ 5045.99",
                      style: TextStyle(color: Color(0xff95989A))),
                  Image.asset(
                    "assets/up.png",
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
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 40),
                    child: Text("29 Sep. 17",
                        style: TextStyle(color: Color(0xff95989A))),
                  ),
                  const Text("Office Depot Refund",
                      style: TextStyle(color: Color(0xff95989A))),
                  Expanded(
                    child: Container(),
                  ),
                  const Text("\$ 109.99",
                      style: TextStyle(color: Color(0xff95989A))),
                  Image.asset(
                    "assets/up.png",
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
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 40),
                    child: Text("26 Sep. 17",
                        style: TextStyle(color: Color(0xff95989A))),
                  ),
                  const Text("Car Payment",
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
              padding: EdgeInsets.only(left: 50, right: 15),
              child: Divider(
                thickness: 1,
                color: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 40),
                    child: Text("24 Sep. 17",
                        style: TextStyle(
                            color: Color.fromARGB(255, 84, 109, 126))),
                  ),
                  const Text("Cash Desk Deposit",
                      style: TextStyle(color: Color(0xff95989A))),
                  Expanded(
                    child: Container(),
                  ),
                  const Text("\$  300.00",
                      style: TextStyle(color: Color(0xff95989A))),
                  Image.asset(
                    "assets/up.png",
                    scale: .6,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            button2(namebutton: "View Transactions", ontappress: () {})
          ],
        ),
      ],
    ),
  );
}
