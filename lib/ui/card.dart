import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';

class ListCard extends StatelessWidget {
  String? name;
  DateTime? createdAt;
  String? category;
  bool? locked;
  ListCard(
      {required this.name,
      required this.createdAt,
      required this.category,
      this.locked});

  List<String> addresses = [
    "assets/images/mother1.jpg",
    "assets/images/mother2.jpg",
    "assets/images/mother3.jpg"
  ];
  Random random = Random();

  String parseString(String? str) {
    if (str == null) {
      return " ";
    } else {
      return str;
    }
  }

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
                        image:
                            Image.asset(addresses[random.nextInt(3)]).image)),
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
                    Text(
                      category!,
                      style: const TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    Text(
                      name!,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          DateFormat('yMMMMd').format(createdAt!),
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        TextButton(onPressed: () {}, child: Text('Book')),
                      ],
                    )
                  ],
                ))
          ],
        ));
  }
}
