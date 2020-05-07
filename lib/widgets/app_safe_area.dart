import 'package:flutter/material.dart';

class AppSafeArea extends StatelessWidget {
  const AppSafeArea({
    this.child,
    Key key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: child ?? Container(height: 0),
      ),
    );
  }
}
