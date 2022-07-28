import 'package:doctor_ui_app/src/ui/pages/auth/sign_in_page.dart';
import 'package:doctor_ui_app/src/ui/theme/app_assets.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _goToSignInPage();
  }

  _goToSignInPage() async {
    await Future.delayed(const Duration(seconds: 3), () async {
      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SignInPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.imageSplash,
              fit: BoxFit.cover,
              width: size.width,
            ),
            Align(
              alignment: Alignment.center,
              heightFactor: 12,
              child: Image.asset(
                AppAssets.imageLogo,
                fit: BoxFit.fitWidth,
                width: size.width * 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
