import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  String address;
  ListCard(this.address);

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
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Babycare",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    Text(
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
                        Text(
                          '01 February, 2023',
                          style: TextStyle(color: Colors.grey),
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
