// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WelcomeParagraph extends StatelessWidget {
  final Size size;
  const WelcomeParagraph({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Lorem Ipsum is simply dummy",
          style: TextStyle(
            color: Colors.white,
            fontSize: size.height * 0.025,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * .02),
          child: Text(
            "It is a long established fact that a reader \n"
            "will be distracted by the readable\n"
            "content of a page when looking\n"
            "at its layout.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: size.height * 0.02,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}