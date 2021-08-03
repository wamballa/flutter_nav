import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(5),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Spacer(heih),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.teal,
                        radius: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'iPhone 12 Pro Max',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '07483818181',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Account no: 101010101',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            child: Text(
                              "Manage another product",
                              style: TextStyle(
                                color: Colors.teal.shade800,
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            // onTap: _launchURL,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                    child: Divider(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Home');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.home_outlined),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Family usage');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.people),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Family usage', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Bills');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.library_books_outlined),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Bills & Payments',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Plan');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.badge),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Plan & add-ons',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Upgrade');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_upward,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Upgrade',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('New');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.message_outlined,
                          // color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'What\'s new',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Up');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.stars_outlined,
                          // color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'EE Up',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Help');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          // size: 25,
                          // color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Help',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Settings');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          // size: 25,
                          // color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ListTile(
          //   leading: Icon(Icons.input),
          //   // minLeadingWidth: 20,
          //   horizontalTitleGap: 2,
          //   title: Text('Welcome'),
          //   onTap: () => {},
          // ),
          // ListTile(
          //   leading: Icon(Icons.verified_user),
          //   title: Text('Profile'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          // ListTile(
          //   leading: Icon(Icons.settings),
          //   title: Text('Settings'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          // ListTile(
          //   leading: Icon(Icons.border_color),
          //   title: Text('Feedback'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          // ListTile(
          //   leading: Icon(Icons.exit_to_app),
          //   title: Text('Logout'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
