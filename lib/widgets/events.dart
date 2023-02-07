import 'package:flutter/material.dart';
import 'dart:math';

class Events extends StatelessWidget {
  List<String> addresses = [
    "assets/images/mother1.jpg",
    "assets/images/mother2.jpg",
    "assets/images/mother3.jpg"
  ];

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text(
                'Events for you',
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
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return EventsCard(addresses[random.nextInt(3)]);
                  }),
            )
          ],
        ));
  }
}

class EventsCard extends StatelessWidget {
  String address;
  EventsCard(this.address);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        width: 400,
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 500 / 500,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: Image.asset(address).image)),
              ),
            ),
            Container(
                // width: double.infinity,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Babycare",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    const Text(
                      'Understanding of Human behaviour',
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '01 February, 2023',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(onPressed: () {}, child: const Text('Book')),
                      ],
                    )
                  ],
                ))
          ],
        ));
    ;
  }
}
