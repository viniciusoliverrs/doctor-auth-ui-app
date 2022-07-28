import 'package:doctor_ui_app/src/ui/theme/app_assets.dart';
import 'package:doctor_ui_app/src/widget/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../widget/custom_text_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
      Align(
        alignment: Alignment.topCenter,
        child: Image.asset(
          AppAssets.imageSignIn,
          width: size.width,
          fit: BoxFit.cover,
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: size.width,
          height: size.height * .7,
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 40,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome.",
                        style: TextStyle(
                            fontSize: size.height * 0.046,
                            fontWeight: FontWeight.bold)),
                    Text("Sign in to proceed.",
                        style: TextStyle(
                          fontSize: size.height * 0.04,
                          fontWeight: FontWeight.w300,
                        )),
                    SizedBox(height: size.height * .03),
                    Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          CustomTextField(
                            icon: Icons.email_outlined,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          Text(
                            "Password",
                            style: TextStyle(
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          CustomTextField(
                            icon: Icons.lock_outline,
                            keyboardType: TextInputType.text,
                            isSecret: true,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text('Forgot Password?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: size.height * 0.018,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.grey.withAlpha(90),
                                  thickness: 2,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text("Continue with"),
                              ),
                              Expanded(
                                child: Divider(
                                  color: Colors.grey.withAlpha(90),
                                  thickness: 2,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16,bottom: 16),
                            child: CustomButton(
                              text: "Sign In",
                              height: size.height * 0.07,
                              primaryColor: Colors.blue,
                              fontColor: Colors.white,
                              size: size,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    ]));
  }
}
