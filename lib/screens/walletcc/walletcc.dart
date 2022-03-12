import 'package:bank/screens/walletcc/widget/creditcard.dart';
import 'package:bank/screens/walletcc/widget/saving.dart';
import 'package:flutter/material.dart';
import 'package:scroll_navigation/scroll_navigation.dart';

import '../../sharedwidgit/appbarcustom.dart';
import '../../sharedwidgit/background.dart';

class Walletcc extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: customappbar(context, title: "WALLET"),
        body: Stack(
          children: [
            const Background(),
            // const TabBar(
            //     labelColor: Colors.white,
            //     indicatorSize: TabBarIndicatorSize.label,
            //     indicatorColor: Colors.white,
            //     labelStyle: TextStyle(fontSize: 20),
            //     labelPadding: EdgeInsets.only(left: 60, right: 60),
            //     isScrollable: true,
            //     unselectedLabelColor: Colors.white,
            //     tabs: [
            //       Tab(
            //         text: "CREDIT CARD",
            //       ),
            //       Tab(
            //         text: "SAVING",
            //       )
            //     ]),
            // TabBarView(children: [creditcard(context), saving()])
            ScrollNavigation(
              identiferStyle: const NavigationIdentiferStyle(
                color: Colors.white,
                width: 4,
              ),
              bodyStyle: const NavigationBodyStyle(
                background: Colors.transparent,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
              barStyle: const NavigationBarStyle(
                elevation: -200,
                background: Colors.transparent,
                position: NavigationPosition.top,
              ),
              pages: [creditcard(context), saving()],
              items: const [
                ScrollNavigationItem(
                    icon: Text(
                  "CREDIT CARD",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                )),
                ScrollNavigationItem(
                    icon: Text(
                  "SAVING",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                )),
              ],
            ),
          ],
        ));
  }
}
