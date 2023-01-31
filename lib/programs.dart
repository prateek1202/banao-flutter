import 'package:flutter/material.dart';

class Programs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text('Programs for you'),
          Row(
              mainAxisSize: MainAxisSize.min,
              children: [Text("View all"), Icon(Icons.arrow_forward)])
        ]),
        // ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [],
        // )
        ClipRRect(
          child: Image.asset('assets/images/mother1.jpg'),
          borderRadius: BorderRadius.circular(5),
        )
      ],
    ));
  }
}
