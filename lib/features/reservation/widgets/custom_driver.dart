import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:methak/shared/resources/color_resources.dart';

class CustomDriver extends StatelessWidget {
  const CustomDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(color: ColorResources.blackColor.withOpacity(0.05));
  }
}
