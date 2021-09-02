import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iostab/pages/newpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
              iconSize: 33,
              backgroundColor: Colors.deepPurple,
              activeColor: Colors.white,
              inactiveColor: Colors.white.withOpacity(0.5),
              onTap: (index) {
                // print(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.task_alt),
                  label: 'Tasks',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ]),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                // Flat navigation with cupertino tab view
                return CupertinoTabView(
                    builder: (context) => NewPage(title: 'Tab 1'));
              case 1:
                return CupertinoTabView(
                    builder: (context) => NewPage(title: 'Tab 2'));
              case 2:
                return CupertinoTabView(
                    builder: (context) => NewPage(title: 'Tab 3'));
              default:
                return NewPage(title: 'Tab 1');
            }
          },
        ),
      );
}
