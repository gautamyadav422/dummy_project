import 'package:dummy_project/HomePage/map.dart';
import 'package:dummy_project/HomePage/setting.dart';
import 'package:flutter/material.dart';

import 'HomePageMain.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeMainPage(),
    MyMap(),
    Mysetting(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text(
                '.',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.location_on),
              title: new Text('.',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('.',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)))
          ],
        ),
        body: _children[_currentIndex],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
