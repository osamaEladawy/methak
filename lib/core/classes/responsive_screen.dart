import 'package:flutter/material.dart';

class ResponsiveScreen {
  static late double height;
  static late double width;

 static void initialize(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
  }
}
