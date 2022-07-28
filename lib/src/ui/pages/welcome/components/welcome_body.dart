// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doctor_ui_app/src/ui/pages/splash/splash_page.dart';
import 'package:doctor_ui_app/src/ui/pages/welcome/components/welcome_content.dart';
import 'package:flutter/material.dart';

import '../../../../widget/custom_button.dart';
import 'welcome_gradient_container.dart';
import 'welcome_header.dart';

class WelcomeBody extends StatelessWidget {
  final Size size;
  const WelcomeBody({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WelcomeGradientContainer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            WelcomeHeader(size: size),
            WelcomeContent(size: size),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: CustomButton(
                size: size,
                primaryColor: Colors.white,
                text: 'Get Started',
                height: size.height * .08,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SplashPage()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
