import 'package:flutter/material.dart';

import '../model/lessons_datamodel.dart';
import 'package:http/http.dart' as http;
import 'package:atg_project/ui/card.dart';

class Lessons extends StatefulWidget {
  @override
  State<Lessons> createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  bool loading = true;
  List<Item> items = [];

  final String url = "https://632017e19f82827dcf24a655.mockapi.io/api/lessons";

  var client = http.Client();

  Future<void> fetchData() async {
    http.Response response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      LessonsModel responseJson = modelFromJson(response.body);
      responseJson.items.map((e) => items.add(e)).toList();
      setState(() {
        loading = false;
      });
    } else {
      throw ("error");
    }
  }

  String parseString(String? str) {
    if (str == null) {
      return " ";
    } else {
      return str;
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text(
                'Lessons for you',
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
                child: loading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return ListCard(
                            category: items[index].category,
                            createdAt: items[index].createdAt,
                            name: items[index].name,
                            locked: items[index].locked,
                          );
                        })),
          ],
        ));
  }
}
