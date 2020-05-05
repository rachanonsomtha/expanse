import 'package:flutter/material.dart';

class RoundedBoxShadow extends StatelessWidget {
  RoundedBoxShadow({
    Key key,
    this.margin = EdgeInsets.zero,
    this.padding = const EdgeInsets.all(3.0),
    this.color = Colors.white,
    this.radius = 3.0,
    @required this.child,
    this.onClick,
    this.shadowDistance: 3,
    this.shadowRadius: 6,
    this.shadowIn: true,
  }) : super(key: key);

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final Color color;
  final double radius;
  final Widget child;
  final onClick;
  final bool shadowIn;
  final double shadowDistance;
  final double shadowRadius;

  @override
  Widget build(BuildContext context) {
    return shadowIn
        ? Container(
            margin: margin,
            padding: padding,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(
                Radius.circular(radius),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  spreadRadius: 0.25,
                  blurRadius: shadowRadius,
                  offset: Offset(
                    0.0,
                    shadowDistance,
                  ),
                ),
              ],
            ),
            child: ButtonTheme(
              height: 0,
              minWidth: 0,
              padding: EdgeInsets.zero,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: onClick,
                  child: child,
                ),
              ),
            ),
          )
        : ButtonTheme(
            height: 0,
            minWidth: 0,
            padding: EdgeInsets.zero,
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: onClick,
              child: Container(
                margin: margin,
                padding: padding,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.all(
                    Radius.circular(radius),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 6,
                      offset: Offset(
                        0.0,
                        3,
                      ),
                    ),
                  ],
                ),
                child: child,
              ),
            ),
          );
  }
}
