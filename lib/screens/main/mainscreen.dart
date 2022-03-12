import 'package:bank/screens/main/widget/firstcontainer.dart';
import 'package:bank/screens/main/widget/lastcontainer.dart';
import 'package:bank/screens/main/widget/middlecontainer.dart';
import 'package:flutter/material.dart';
import '../../sharedwidgit/appbarcustom.dart';
import '../../sharedwidgit/background.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customappbar(
        context,
      ),
      body: Stack(
        children: [
          const Background(),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    firstcontainer(),
                    const SizedBox(
                      height: 20,
                    ),
                    middlecontainer(),
                    const SizedBox(
                      height: 20,
                    ),
                    lastconyainer(context)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
