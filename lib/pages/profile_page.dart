import 'package:auto_size_text/auto_size_text.dart';
import 'package:expanse/utils/contextor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Profilepage extends StatefulWidget {
  @override
  _OtherpageState createState() => _OtherpageState();
}

class _OtherpageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Contextor.width(context),
      height: Contextor.height(context),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Other page'),
          ],
        ),
      ),
    );
  }
}
