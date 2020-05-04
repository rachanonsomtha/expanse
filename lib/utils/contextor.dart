import 'package:flutter/material.dart';

class Contextor {
  static mediaQuery(context) {
    return MediaQuery.of(context);
  }

  static size(context) {
    return MediaQuery.of(context).size;
  }

  static width(context) {
    return MediaQuery.of(context).size.width;
  }

  static height(context) {
    return MediaQuery.of(context).size.height;
  }

  static halfWidth(context) {
    return MediaQuery.of(context).size.width / 2;
  }

  static halfHeight(context) {
    return MediaQuery.of(context).size.height / 2;
  }
}
