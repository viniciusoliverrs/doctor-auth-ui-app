import 'package:doctor_ui_app/src/ui/pages/welcome/components/welcome_paragraph.dart';
import 'package:flutter/material.dart';
import 'welcome_image.dart';

class WelcomeContent extends StatelessWidget {
  final Size size;
  const WelcomeContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WelcomeImage(size: size),
          SizedBox(height: size.height * .08),
          WelcomeParagraph(size: size),
        ],
      ),
    );
  }
}
