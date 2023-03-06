import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:safe_sofware_test/views/HomePage.dart';
import 'package:safe_sofware_test/utilis/colors.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedindex = 1;
  List bodys = [
    const Center(
        child: Card(
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Text("Settings"),
      ),
    )),
    HomePage(),
    const Center(
        child: Card(
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Text("Logout"),
      ),
    )),
  ];
  void onitemtapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "Settings"),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(
                LineAwesomeIcons.share_square,
              ),
              label: "Logout"),
        ],
        currentIndex: selectedindex,
        onTap: onitemtapped,
        selectedIconTheme: IconThemeData(color: mycolor.primarycolor),
        selectedItemColor: mycolor.primarycolor,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
      ),
      body: bodys.elementAt(selectedindex),
    ));
  }
}
