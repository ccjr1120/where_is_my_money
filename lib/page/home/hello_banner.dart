import 'package:flutter/material.dart';

class HelloBanner extends StatelessWidget {
  const HelloBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "HI, 早上好!",
            style: TextStyle(
                fontFamily: "Din",
                color: Color.fromRGBO(35, 50, 81, 1),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("2021年12月20日 ☀ 晴",
              style: TextStyle(
                  fontFamily: "Din",
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(173, 180, 190, 1),
                  fontSize: 14)),
        )
      ],
    );
  }
}
