import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String name;
  final String imageAsset;
  final Function() onTap;
  final bool active;
  const ItemCard({
    Key? key,
    required this.name,
    required this.imageAsset,
    required this.onTap,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(active ? 0.0 : 8.0),
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
          child: Container(
            padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
            width: 72,
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(bottom: 4),
                child: Text(
                  name,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 1,
                child: Image(
                  image: AssetImage(imageAsset),
                  width: 72,
                  height: 84,
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
