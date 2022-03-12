import 'package:bank/screens/walletHistory/widget/history.dart';

import 'package:bank/screens/walletcc/widget/saving.dart';
import 'package:bank/sharedwidgit/appbarcustom.dart';
import 'package:bank/sharedwidgit/background.dart';
import 'package:flutter/material.dart';

import 'package:scroll_navigation/scroll_navigation.dart';

class WalletHistoey extends StatelessWidget {
  const WalletHistoey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customappbar(
        context,
        showicon: true,
      ),
      body: Stack(children: [
        const Background(),
        ScrollNavigation(
          identiferStyle: const NavigationIdentiferStyle(
            color: Colors.white,
            width: 4,
          ),
          bodyStyle: const NavigationBodyStyle(
            background: Colors.transparent,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          barStyle: const NavigationBarStyle(
            elevation: -200,
            background: Colors.transparent,
            position: NavigationPosition.top,
          ),
          pages: [history(context), saving()],
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
      ]),
    );
  }
}
