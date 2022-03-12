import 'package:bank/screens/main/mainscreen.dart';
import 'package:flutter/material.dart';

import '../../sharedwidgit/background.dart';
import '../../sharedwidgit/button2.dart';

class Signinfingerscreen extends StatelessWidget {
  const Signinfingerscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          const Background(),
          // Padding(
          //   padding: const EdgeInsets.only(top: 150, left: 45),
          //   child:
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                children: [
                  const Text(
                    "Start Using Your",
                    style: TextStyle(color: Color(0xff2189BC), fontSize: 24),
                  ),
                  const Text(
                    "Fingerprint",
                    style: TextStyle(color: Color(0xff2189BC), fontSize: 24),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/fingerprint.png",
                    scale: 1,
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                  button2(
                    ontappress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Mainscreen()));
                    },
                    namebutton: "Not now",
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
