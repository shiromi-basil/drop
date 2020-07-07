
import 'package:flutter/material.dart';
import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';

import 'about_donating.dart';
import 'events.dart';
import 'history.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<Widget> _children = [
    AboutDonating(),
    Events(),
    History(),
    AboutDonating(),
  ];
  
  int currentPage = 0;
  String currentTitle = "About";
  Color inactiveColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentPage],
      bottomNavigationBar: CubertoBottomBar(
        inactiveIconColor: inactiveColor,
        tabStyle: CubertoTabStyle
            .STYLE_FADED_BACKGROUND, // By default its CubertoTabStyle.STYLE_NORMAL
        initialSelection: 0,
        drawer: CubertoDrawer
            .NO_DRAWER, // By default its NO_DRAWER (Availble START_DRAWER and END_DRAWER as per where you want to how the drawer icon in Cuberto Bottom bar)
        tabs: [
          TabData(
            iconData: Icons.info,
            title: "About",
            tabColor: Colors.redAccent,
          ),
          TabData(
            iconData: Icons.search,
            title: "Events",
            tabColor: Colors.redAccent,
          ),
          TabData(
            iconData: Icons.history,
            title: "History",
            tabColor: Colors.redAccent,
          ),
          TabData(
            iconData: Icons.settings,
            title: "Settings",
            tabColor: Colors.redAccent,
          ),
        ],
        onTabChangedListener: (position, title, color) {
          setState(() {
            currentPage = position;
            currentTitle = title;
          });
        },
      ),
    );
  }
  
  /*
    int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentPage],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentPage,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          currentPage = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.info),
            title: Text("About"),
            activeColor: Colors.redAccent,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.search),
            title: Text('Events'),
            activeColor: Colors.redAccent,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.history),
            title: Text('History'),
            activeColor: Colors.redAccent,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.redAccent,
            inactiveColor: Colors.black,
          ),
        ],
      ),
    );
  }
  */
}