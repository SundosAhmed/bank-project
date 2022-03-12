import 'package:flutter/cupertino.dart';

class roooooow extends StatelessWidget {
  const roooooow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 8),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 40),
            child:
                Text("29 Sep. 17", style: TextStyle(color: Color(0xff95989A))),
          ),
          const Text("Cash Desk Deposit",
              style: TextStyle(color: Color(0xff95989A))),
          Expanded(
            child: Container(),
          ),
          const Text("\$ 300.00", style: TextStyle(color: Color(0xff95989A))),
          Image.asset(
            "assets/arrow.png",
            scale: .6,
          )
        ],
      ),
    );
  }
}
