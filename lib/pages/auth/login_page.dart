import 'package:expanse/utils/contextor.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String route = "/login";

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<LoginPage> {
  final String route = LoginPage.route;

  onPressedLoginButton() {}

  @override
  Widget build(BuildContext context) {
    double loginButtonHorizontalPadding = Contextor.width(context) / 3;
    double loginButtonVerticalPadding = 20;

    double inputBoxHorizontalPadding = Contextor.width(context) / 6;
    double inputBoxVerticalPadding = 12;

    return Container(
      width: Contextor.width(context),
      height: Contextor.height(context),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('login page'),
          ],
        ),
      ),
    );
  }
}
