import 'package:expanse/pages/app_page.dart';
import 'package:expanse/utils/contextor.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  static String route = "/landing";

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {
          Navigator.pushReplacementNamed(context, AppPage.route);
        },
        child: Text('next'),
      ),
      body: Container(
        width: Contextor.width(context),
        height: Contextor.height(context),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text('Landing page'),
            ],
          ),
        ),
      ),
    );
  }
}
