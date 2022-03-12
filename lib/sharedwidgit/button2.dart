import 'package:flutter/material.dart';

class button2 extends StatelessWidget {
  String namebutton;
  VoidCallback ontappress;
  button2({required this.namebutton, required this.ontappress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontappress,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Color(0xff048AB6),
            Color(0xff16CFF3),
          ]),
          borderRadius: (BorderRadius.circular(25)),
        ),
        height: 45,
        width: 330,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              namebutton,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
