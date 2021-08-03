import 'package:flutter/material.dart';
import 'navbar.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 40.0;
const ColorinactiveCardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);
const Color inactiveCardColor = Colors.teal; //Color(0XFF111328);
const Color activeCardColor = Color(0xFF1D1E33);

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
      drawer: NavDrawer(),
      appBar: AppBar(
        foregroundColor: Colors.tealAccent,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.teal,
          size: 100,
        ),
        title: Column(
          children: [
            Text(
              '07483 717171',
              style: TextStyle(
                fontSize: 12,
                color: Colors.teal.shade700,
              ),
            ),
            Text(
              'Apple iPhone 12 Pro Max',
              style: TextStyle(
                fontSize: 12,
                color: Colors.teal.shade700,
              ),
            )
          ],
        ),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // setState(() {
                        //   updateColor(Gender.male);
                        // });
                      },
                      child: ReusableWidget(
                        colour: inactiveCardColor,
                        cardChild: ReusableWidgetContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'Mobile',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // setState(() {
                        //   updateColor(Gender.female);
                        // });
                      },
                      child: ReusableWidget(
                        colour: inactiveCardColor,
                        cardChild: ReusableWidgetContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'Broadband',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableWidget(
                colour: inactiveCardColor,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ReusableWidget(
                      colour: inactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: inactiveCardColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // height: 200,
                    ),
                  ),
                ],
              ),
            ),
          ])),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.teal,
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
            icon: Icon(Icons.money),
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
