import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
        routeName, (predicate) => false,
        arguments: arguments);
  }

  Future<dynamic> maybePop() async{
    return Navigator.of(this).maybePop();
  }
  void pop() {
    return Navigator.of(this).pop();
  }

  Future<dynamic> push(Widget page) {
    return Navigator.of(this).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
