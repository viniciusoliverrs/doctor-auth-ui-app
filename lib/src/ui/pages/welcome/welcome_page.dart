import 'package:flutter/material.dart';

import 'components/welcome_body.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(body: WelcomeBody(size: size));
  }
}
