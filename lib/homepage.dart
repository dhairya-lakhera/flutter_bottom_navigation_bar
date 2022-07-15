import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_bar/business.dart';
import 'package:flutter_bottom_navigation_bar/dashboard.dart';
import 'package:flutter_bottom_navigation_bar/school.dart';
import 'package:flutter_bottom_navigation_bar/settings.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<PreferredSizeWidget> _widgetAppBar = <PreferredSizeWidget>[
    AppBar(
      title: Text('Dashboard'),
    ),
    AppBar(
      title: Text('Business'),
    ),
    AppBar(
      title: Text('School'),
    ),
    AppBar(
      title: Text('Settings'),
    ),
  ];

  List<Widget> _widgetBody = <Widget>[
    Dashboard(),
    Business(),
    School(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _widgetAppBar.elementAt(_selectedIndex),
      body: _widgetBody.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
