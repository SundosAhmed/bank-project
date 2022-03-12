import 'package:bank/screens/main/mainscreen.dart';
import 'package:bank/screens/signin_finger/signinFingerscreen.dart';
import 'package:bank/screens/signin_manaually/singinmanuallybloc.dart';
import 'package:bank/sharedwidgit/button.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../sharedwidgit/background.dart';

class Singinmanually extends StatefulWidget {
  @override
  State<Singinmanually> createState() => _SinginmanuallyState();
}

class _SinginmanuallyState extends State<Singinmanually> {
  var bloc = Signinbloc();
  @override
  void initState() {
    bloc.readRemrmberMyid().then((value) {
      print(value);
      bloc.rememberMyIdChecked = value != "" ? true : false;
      bloc.usernsme.text = value;
      bloc.readfigerprint().then(((value) {
        if (bloc.useFingerPrintChecked = value) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Signinfingerscreen()));
        }

        setState(() {});
      }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            const Background(),
            SafeArea(
              child: Column(
                children: [
                  Container(
                    child: Image.asset("assets/Union 1.png"),
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 430,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                              ),
                              const Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Color(0xff777879), fontSize: 24),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Image.asset(
                                    "assets/Group 264.png",
                                    width: 50,
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16, left: 16),
                            child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                controller: bloc.usernsme,
                                decoration: const InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff707273),
                                    ),
                                    labelText: "PRO ID",
                                    hintText: "Enter your bank ID",
                                    hintStyle: TextStyle(
                                      color: Color(0xffAEB1B3),
                                    ))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                obscureText: true,
                                controller: bloc.password,
                                decoration: const InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff707273),
                                    ),
                                    labelText: "PASSWORD",
                                    hintText: "......",
                                    hintStyle: TextStyle(
                                      color: Color(0xffAEB1B3),
                                      fontSize: 32,
                                    ))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: bloc.rememberMyIdChecked,
                                  onChanged: (value) {
                                    bloc.rememberMyIdChecked = value!;
                                    bloc.savingRemrmberMyid(
                                        bloc.rememberMyIdChecked
                                            ? bloc.usernsme.text
                                            : "");
                                    setState(() {});
                                  },
                                ),
                                const Text(
                                  "Remember my ID for future logins.",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff95989A),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Row(
                              children: [
                                Checkbox(
                                    value: bloc.useFingerPrintChecked,
                                    onChanged: (value) {
                                      bloc.savefingerprint(value ?? false);
                                      bloc.useFingerPrintChecked = value!;

                                      setState(() {});
                                    }),
                                const Text(
                                  "Use fingerprint recognition next time",
                                  style: TextStyle(
                                      color: Color(0xff95989A), fontSize: 13),
                                )
                              ],
                            ),
                          ),
                          CustomButton(
                              backgroundcolor: const [
                                Color(0xff027FAC),
                                Color(0xff16CFF3)
                              ],
                              textname: "Sign in",
                              textcolor: Colors.white,
                              ontappress: () {
                                if (bloc.validation()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Mainscreen()));
                                }
                              })
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
