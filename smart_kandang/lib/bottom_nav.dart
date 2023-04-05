import 'package:smart_kandang/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smart_kandang/screen/article/article_page.dart';
import 'package:smart_kandang/screen/home/home_page.dart';
import 'package:smart_kandang/screen/profile/profile_page.dart';
import 'package:smart_kandang/screen/tool/tool_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBar();
}

class _NavBar extends State<NavBar> {
  int _selectIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ToolPage(),
    DiscoverScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PrimaryColor,
        body: Center(
          child: _widgetOptions.elementAt(_selectIndex),
        ),
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: Container(
          color: NavColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GNav(
                backgroundColor: NavColor,
                color: Colors.grey,
                activeColor: PrimaryColor,
                gap: 8,
                padding: EdgeInsets.all(16),
                tabs: const [
                  GButton(icon: Icons.home, text: 'Home'),
                  GButton(icon: Icons.videogame_asset, text: 'Tool'),
                  GButton(icon: Icons.newspaper, text: 'Article'),
                  GButton(icon: Icons.person, text: 'Profile'),
                ],
                selectedIndex: _selectIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectIndex = index;
                  });
                }),
          ),
        ));
  }
}
