import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String name;
  final String imageAsset;
  const ItemCard({Key? key, required this.name, required this.imageAsset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 12, 8, 2),
      width: 80,
      height: 90,
      color: Colors.white,
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(bottom: 4),
          child: Text(
            name,
            style: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        const Expanded(
          flex: 1,
          child: Image(
            image: AssetImage('assets/images/1.png'),
          ),
        )
      ]),
    );
  }
}
