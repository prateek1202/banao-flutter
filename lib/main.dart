import 'package:flutter/material.dart';

import 'drawer.dart';
import 'bottonNavigationBar.dart';
import 'events.dart';
import 'lessons.dart';
import 'programs.dart';

void main(List<String> args) {
  runApp(ATGApp());
}

class ATGApp extends StatelessWidget {
  int _selectedIndex = 0;
  void _onItemSelection(int index) {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const DrawerScreen(),
        appBar: AppBar(
          title: const Text('ATG Project'),
          elevation: 0,
          actions: const [
            Icon(Icons.message),
            Padding(padding: EdgeInsets.only(left: 18)),
            Icon(Icons.notifications),
            Padding(padding: EdgeInsets.only(left: 8))
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Color.fromARGB(255, 229, 243, 255),
                    height: 220,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 5),
                        child: Text(
                          "Hello, Priya!",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 3, left: 5),
                        child: Text(
                          "What do you want to do today?",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: GridView.count(
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 4,
                          childAspectRatio: 4,
                          padding: const EdgeInsets.only(left: 4, right: 4),
                          children: [
                            OutlinedButton(
                                onPressed: () => {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.book),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text('Programs',
                                        style: TextStyle(fontSize: 18)),
                                  ],
                                ),
                                style: TextButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.blue, width: 1))),
                            TextButton(
                              onPressed: () => {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.help),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text('Get help',
                                      style: TextStyle(fontSize: 18))
                                ],
                              ),
                              style: TextButton.styleFrom(
                                  side: const BorderSide(
                                      color: Colors.blue, width: 1)),
                            ),
                            TextButton(
                              onPressed: () => {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.library_books),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text('Learn', style: TextStyle(fontSize: 18))
                                ],
                              ),
                              style: TextButton.styleFrom(
                                  side: const BorderSide(
                                      color: Colors.blue, width: 1)),
                            ),
                            TextButton(
                              onPressed: () => {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.bar_chart),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text('DD Tracker',
                                      style: TextStyle(fontSize: 18))
                                ],
                              ),
                              style: TextButton.styleFrom(
                                  side: const BorderSide(
                                      color: Colors.blue, width: 1)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Programs(),
              Events(),
              Lessons(),
            ],
          ),
        ),
      ),
    );
  }
}
