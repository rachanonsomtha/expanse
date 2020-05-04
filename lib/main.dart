import 'package:flutter/material.dart';
import 'package:expanse/pages/app_page.dart';
import 'package:expanse/pages/home_page.dart';
import 'package:expanse/pages/landing_page.dart';
import 'package:expanse/pages/auth/login_page.dart';
import 'package:google_fonts/google_fonts.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TrueShopApp',
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: GoogleFonts.promptTextTheme(Theme.of(context).textTheme),
      ),
      routes: {
        AppPage.route: (context) => AppPage(),
        LoginPage.route: (context) => LoginPage(),
        HomePage.route: (context) => HomePage(),
      },
      home: LandingPage(),
    );

  }
}
