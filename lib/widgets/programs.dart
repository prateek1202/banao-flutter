import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/programs_datamodel.dart';
import 'package:atg_project/ui/card.dart';

class Programs extends StatefulWidget {
  @override
  State<Programs> createState() => _ProgramsState();
}

class _ProgramsState extends State<Programs> {
  bool loading = true;
  List<Item> items = [];
  final String url = "https://632017e19f82827dcf24a655.mockapi.io/api/programs";
  var client = http.Client();
  Future<void> fetchData() async {
    http.Response response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      ProgramsModel responseJson = modelFromJson(response.body);
      responseJson.items.map((e) => items.add(e)).toList();
      print(items[0].toJson());
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
                          category: parseString(items[index].category),
                          createdAt: items[index].createdAt,
                          name: parseString(items[index].name),
                          locked: null,
                        );
                      }),
            )
          ],
        ));
  }
}
