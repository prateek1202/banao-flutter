import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  String address;
  ListCard(this.address);

  @override
  Widget build(BuildContext context) {
    return Image.asset(address);
  }
}
