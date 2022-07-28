// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WelcomeGradientContainer extends StatelessWidget {
  final Widget child;
  const WelcomeGradientContainer({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 88, 167, 252),
                  Color(0xff2284EA),
                  Color(0xff2284EA),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.6, 1.0])),
        child: child);
  }
}