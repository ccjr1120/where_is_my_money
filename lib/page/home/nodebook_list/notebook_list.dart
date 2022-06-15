import 'package:flutter/material.dart';
import 'package:where_is_my_money/page/home/nodebook_list/item_card.dart';

class NotebookList extends StatelessWidget {
  const NotebookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        ItemCard(name: '个人帐本', imageAsset: 'assets/images/1.png'),
        ItemCard(name: '家庭账本', imageAsset: 'assets/images/2.png'),
        ItemCard(name: '旅行账本', imageAsset: 'assets/images/3.png')
      ],
    );
  }
}
