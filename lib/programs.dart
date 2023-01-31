import 'package:flutter/material.dart';

import 'card.dart';

class Programs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(4),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text(
                'Programs for you',
                style: TextStyle(fontSize: 20),
              ),
              Row(mainAxisSize: MainAxisSize.min, children: const [
                Text(
                  "View all",
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.arrow_forward)
              ])
            ]),
            const SizedBox(
              height: 30,
            ),
            // ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: [],
            // )
            ListCard("assets/images/mother1.jpg")
          ],
        ));
  }
}
