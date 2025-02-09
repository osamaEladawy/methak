import 'dart:io';

import 'package:flutter/material.dart';

AlertDialog alertWhenHacked() {
  return AlertDialog(
    title: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
      child: Text(
        'Warring!',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    content: Text('This app is not secure'),
    actions: <Widget>[
      Center(
        child: ElevatedButton.icon(
          icon: Icon(
            Icons.error,
            color: Colors.red,
          ),
          label: Text('Exit Now'),
          onPressed: () {
            exit(0);
          },
        ),
      ),
    ],
  );
}
