import 'package:flutter/material.dart';
import 'package:where_is_my_money/page/home/bill_details_list/bill_details_list.dart';
import 'package:where_is_my_money/page/home/bill_list/bill_list.dart';
import 'hello_banner/hello_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: const Color.fromRGBO(246, 247, 250, 1),
          flexibleSpace: SizedBox(
            height: 336,
            child: Column(
              children: const [
                HelloBanner(),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: BillList(),
                )
              ],
            ),
          ),
          collapsedHeight: 336,
        ),
        SliverAppBar(
          backgroundColor: const Color.fromRGBO(246, 247, 250, 1),
          title: Row(
            children: const [
              Text(
                "账本",
                style: TextStyle(
                    color: Color.fromARGB(255, 74, 123, 110),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text("统计",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 24,
                      fontWeight: FontWeight.bold))
            ],
          ),
          primary: false,
          stretch: false,
          centerTitle: false,
          forceElevated: false,
          toolbarHeight: 30,
          collapsedHeight: 30,
          pinned: true,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Card(
                margin: const EdgeInsets.all(15),
                child: Container(
                  color: Colors.blue[100 * (index % 9 + 1)],
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    "Item $index",
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              );
            },
            childCount: 1000, // 1000 list items
          ),
        ),
      ],
    );
  }
}
