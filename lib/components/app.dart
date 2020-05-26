import 'package:flutter/material.dart';
import 'home.dart';

/// This Widget is the main application widget.
class MyApp extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
        return MyAppWidgetState();
    }
}

class MyAppWidgetState extends State<MyApp> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle( fontSize: 30, fontWeight: FontWeight.bold);
  final _pageOptions = [
    HorizontalScroll(),
    Text(
      'Index 1: Bookmarks',
      style: optionStyle,
    ),
    Text(
      'Index 2: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryTextTheme: TextTheme(
          title: TextStyle(color: Colors.white),
        ),
      ),
      home:  Scaffold(
      body: Container( child: _pageOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections_bookmark, color: Colors.grey),
            title: Text('Bookmarks'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_power, color: Colors.grey),
            title: Text('Settings'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[500],
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
      ),
    ),
  );
  }
}
