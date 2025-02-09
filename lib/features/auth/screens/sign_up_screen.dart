import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:methak/features/auth/cubit/auth_cubit.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(),
        );
      },
    );
  }
}
