// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AnimationPage extends PageRouteBuilder {
  final Widget page;
  AnimationPage({required this.page})
      : super(
          transitionDuration: const Duration(milliseconds: 3000),
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            //يستخدم في حالة ظهور الانيماشن بشكل فيه شفاف
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}
