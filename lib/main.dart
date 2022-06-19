import 'package:flutter/material.dart';
import 'package:where_is_my_money/page/home/home_page.dart';
import 'package:flutter/rendering.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "where is my money",
        theme: ThemeData(fontFamily: "Ali"),
        home: Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromRGBO(246, 247, 250, 1),
            child: const Scaffold(body: HomePage())));
  }
}
