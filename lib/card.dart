import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  String address;
  ListCard(this.address);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
            onTap: () {},
            child: Image.asset(
              address,
              fit: BoxFit.cover,
            )),
        footer: const GridTileBar(
          title: Text('title'),
          backgroundColor: Colors.black87,
        ),
      ),
    );
  }
}
