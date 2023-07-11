import 'package:flutter/material.dart';
import 'package:home_project/pages/home_page.dart';
import 'package:home_project/pages/room.dart';
import 'package:home_project/pages/temperature.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  // List of pages to be displayed
  List<Widget> _pages = [
    TemperaturePage(), // Placeholder widget for the first tab
    HomePage(), // Your home page widget for the second tab
    Devices(), // Placeholder widget for the third tab
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey,
        ),
      ),
      home: Scaffold(
        body: Center(
          child: _pages[_selectedIndex], // Display the selected page
        ),
        bottomNavigationBar: MoltenBottomNavigationBar(
          selectedIndex: _selectedIndex,
          domeHeight: 0,
          onTabChange: (clickedIndex) {
            setState(() {
              _selectedIndex = clickedIndex;
            });
          },
          tabs: [
            MoltenTab(
              icon: Icon(Icons.sunny),
            ),
            MoltenTab(
              icon: Icon(Icons.home),
              title: Text('home'),
            ),
            MoltenTab(
              icon: Icon(Icons.device_hub),
            ),
          ],
        ),
      ),
    );
  }
}
