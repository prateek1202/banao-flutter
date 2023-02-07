import 'package:flutter/material.dart';

import 'ui/drawer.dart';
import 'ui/header.dart';
import 'ui/bottonNavigationBar.dart';
import './widgets/events.dart';
import './widgets/lessons.dart';
import './widgets/programs.dart';

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
              AppHeader(),
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
