import 'package:flutter/material.dart';

import 'package:atg_project/ui/card.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text(
                'Events and Experiences',
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
            Container(
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListCard(
                      category: null,
                      createdAt: null,
                      name: null,
                      locked: null,
                    );
                  }),
            ),
          ],
        ));
  }
}
