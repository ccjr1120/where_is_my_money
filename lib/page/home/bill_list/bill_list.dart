import 'package:flutter/material.dart';
import 'package:where_is_my_money/page/home/bill_list/bill_statistics_card/bill_statistics_card.dart';
import 'package:where_is_my_money/page/home/bill_list/item_card.dart';

class BillList extends StatelessWidget {
  static const exampleList = [
    ItemCard(name: '个人帐本', imageAsset: 'assets/images/1.png'),
    ItemCard(name: '家庭账本', imageAsset: 'assets/images/2.png'),
    ItemCard(name: '旅行账本', imageAsset: 'assets/images/3.png'),
    ItemCard(name: '个人帐本', imageAsset: 'assets/images/4.png'),
    ItemCard(name: '家庭账本', imageAsset: 'assets/images/5.png'),
    ItemCard(name: '旅行账本', imageAsset: 'assets/images/6.png'),
    ItemCard(name: '个人帐本', imageAsset: 'assets/images/7.png'),
    ItemCard(name: '家庭账本', imageAsset: 'assets/images/8.png'),
    ItemCard(name: '旅行账本', imageAsset: 'assets/images/9.png'),
    ItemCard(name: '个人帐本', imageAsset: 'assets/images/10.png'),
    ItemCard(name: '家庭账本', imageAsset: 'assets/images/11.png'),
    ItemCard(name: '旅行账本', imageAsset: 'assets/images/12.png'),
    ItemCard(name: '旅行账本', imageAsset: 'assets/images/13.png'),
  ];

  const BillList({Key? key}) : super(key: key);

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
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 13,
                  itemBuilder: (context, index) {
                    return exampleList[index];
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
        const BillStatisticsCard()
      ],
    );
  }
}
