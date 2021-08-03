import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          alignment: Alignment.topLeft,
          child: DropdownButton(
            value: selectedValue,
            icon: Icon(Icons.menu),
            items: [
              DropdownMenuItem(
                child: Text('One'),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text('Two'),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text('Three'),
                value: 3,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF6200EE),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "Manage",
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: 'Shop',
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            label: 'Rewards',
            icon: Icon(Icons.library_books),
          ),
          BottomNavigationBarItem(
            label: 'Help',
            icon: Icon(Icons.library_books),
          ),
        ],
      ),
    );
  }
}
