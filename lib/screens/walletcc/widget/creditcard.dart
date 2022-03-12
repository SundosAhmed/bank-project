import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../walletbloc.dart';
import 'card.dart';
import 'downcontainer.dart';

Widget creditcard(BuildContext context) {
  var bloc = Walletccblock();
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
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 240,
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
                    SmoothPageIndicator(
                        controller: bloc.pageController,
                        count: 3,
                        effect: const ScrollingDotsEffect(
                          dotColor: Color(0xffDADADA),
                          activeDotColor: Color(0xff707273),
                          activeStrokeWidth: 2.6,
                          activeDotScale: 1.8,
                          maxVisibleDots: 5,
                          radius: 8,
                          spacing: 10,
                          dotHeight: 7,
                          dotWidth: 7,
                        )),
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
                          "\$ 1,448.00",
                          style:
                              TextStyle(color: Color(0xff707273), fontSize: 30),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          downcontainer(context),
        ],
      ),
      Positioned(
          top: 6,
          child: Container(
            height: 175,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
                onPageChanged: (value) {},
                controller: bloc.pageController,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: cardView(index),
                  );
                })),
          )),
    ],
  );
}
