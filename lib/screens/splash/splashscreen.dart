import 'package:bank/screens/signin_finger/signinFingerscreen.dart';
import 'package:bank/sharedwidgit/background.dart';

import 'package:flutter/material.dart';

import '../../sharedwidgit/button.dart';
import '../signin_manaually/singin_manauallyscreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: Image.asset(
                    "assets/BOA Logo.png",
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                CustomButton(
                  backgroundcolor: const [Colors.white, Colors.white],
                  textname: "Sign in with Finger print ",
                  textcolor: const Color(0xff2189BC),
                  ontappress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Signinfingerscreen()));
                  },
                ),
                CustomButton(
                  backgroundcolor: const [
                    Color(0xff027FAC),
                    Color(0xff16CFF3),
                  ],
                  textname: "Sign in Manually",
                  textcolor: Colors.white,
                  ontappress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Singinmanually()));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
