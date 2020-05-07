import 'package:expanse/pages/auth/login_page.dart';
import 'package:expanse/pages/home_page.dart';
import 'package:expanse/pages/profile_page.dart';
import 'package:expanse/pages/cart_page.dart';
import 'package:expanse/utils/contextor.dart';
import 'package:expanse/widgets/app_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppPage extends StatefulWidget {
  static String route = "/app";

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  final String route = AppPage.route;

  int _selectedIndex = 0;
  static List<Widget> _pageChildren = <Widget>[
    HomePage(),
    Cart(),
    Profilepage(),
  ];

  @override
  Widget build(BuildContext context) {
    return AppSafeArea(
      child: Scaffold(
        body: Center(
          child: _pageChildren.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ]),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                  gap: 8,
                  color: Colors.grey[800],
                  activeColor: Colors.white,
                  tabBackgroundColor: Colors.blue[500],
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  duration: Duration(milliseconds: 1000),
                  tabs: [
                    GButton(
                      icon: MdiIcons.homeOutline,
                      text: 'Home',
                    ),
                    GButton(
                      icon: MdiIcons.cart,
                      text: 'Cart',
                    ),
                    GButton(
                      icon: MdiIcons.accountOutline,
                      text: 'Profile',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
