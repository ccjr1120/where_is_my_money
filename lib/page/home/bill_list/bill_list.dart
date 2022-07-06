import 'package:flutter/material.dart';
import 'package:where_is_my_money/page/home/bill_list/bill_statistics_card/bill_statistics_card.dart';
import 'package:where_is_my_money/page/home/bill_list/item_card.dart';

class BillList extends StatefulWidget {
  const BillList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BillListState();
}

class _BillListState extends State<BillList> {
  static const exampleList = [
    {"name": '个人帐本', "imageAsset": 'assets/images/1.png'},
    {"name": '家庭账本', "imageAsset": 'assets/images/2.png'},
    {"name": '旅行账本', "imageAsset": 'assets/images/3.png'},
    {"name": '个人帐本', "imageAsset": 'assets/images/4.png'},
    {"name": '家庭账本', "imageAsset": 'assets/images/5.png'},
    {"name": '旅行账本', "imageAsset": 'assets/images/6.png'},
    {"name": '个人帐本', "imageAsset": 'assets/images/7.png'},
    {"name": '家庭账本', "imageAsset": 'assets/images/8.png'},
    {"name": '旅行账本', "imageAsset": 'assets/images/9.png'},
    {"name": '个人帐本', "imageAsset": 'assets/images/10.png'},
    {"name": '家庭账本', "imageAsset": 'assets/images/11.png'},
    {"name": '旅行账本', "imageAsset": 'assets/images/12.png'},
  ];

  int curItem = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(right: 8),
                height: 96,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: exampleList.length,
                  itemBuilder: (context, index) {
                    Map<String, String> listItem = exampleList[index];
                    return ItemCard(
                      name: listItem['name'] ?? '',
                      imageAsset: listItem["imageAsset"] ?? '',
                      active: curItem == index,
                      onTap: () {
                        setState(() {
                          curItem = index;
                        });
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 8,
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              width: 72,
              height: 84,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.white, Colors.white],
                      begin: Alignment(0.0, 1),
                      end: Alignment(0.0, 0.35),
                      tileMode: TileMode.decal),
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: const [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "添加",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(51, 138, 121, 1)),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Icon(Icons.add_circle,
                              color: Color.fromRGBO(51, 138, 121, 1)),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 4),
          child: BillStatisticsCard(),
        )
      ],
    );
  }
}
