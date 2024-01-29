import 'package:flutter/material.dart';
import 'package:provider_notify/Screens/changeHomePage.dart';
import 'package:provider_notify/Screens/homepage.dart';

import '../Screens/countPage.dart';

class BottomNavigtor extends StatefulWidget {
  const BottomNavigtor({super.key});

  @override
  State<BottomNavigtor> createState() => _BottomNavigtorState();
}

class _BottomNavigtorState extends State<BottomNavigtor> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget> [
    HomePage(),
    ChangeHomePage(),
    CountPage(),
  ];

  void _onItemTapped (int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.change_circle),
            label: 'Change',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            label: 'Count',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
