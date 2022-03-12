import 'package:flutter/material.dart';

AppBar customappbar(
  BuildContext context, {
  String title = "DASHBOARD",
  bool showicon = false,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: showicon
        ? IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Row(
              children: const [Icon(Icons.arrow_back_ios), Text("Back")],
            ),
          )
        : Container(),
    title: Row(
      children: [
        Expanded(
          child: Container(),
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 17),
        ),
        Expanded(
          child: Container(),
        ),
        Container(
          width: 25,
          child: InkWell(
            child: Image.asset("assets/rightsort.png"),
            onTap: () {},
          ),
        )
      ],
    ),
  );
}
