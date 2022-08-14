import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final double height;
  final Function() onPressed;
  final Color primaryColor;
  final Color fontColor;
  const CommonButton({
    Key? key,
    required this.size,
    required this.text,
    required this.height,
    required this.onPressed,
    required this.primaryColor,
    this.fontColor = Colors.black,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onPressed,
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: primaryColor
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: fontColor,
                  fontSize: size.height * 0.025,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
