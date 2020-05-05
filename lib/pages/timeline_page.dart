import 'package:auto_size_text/auto_size_text.dart';
import 'package:expanse/utils/contextor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Timeline extends StatefulWidget {
  static String route = "/home";

  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  final String route = Timeline.route;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Contextor.width(context),
      height: Contextor.height(context),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Timeline page'),
          ],
        ),
      ),
    );
  }
}
