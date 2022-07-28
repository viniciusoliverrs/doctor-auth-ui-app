// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../theme/app_assets.dart';

class WelcomeImage extends StatelessWidget {
  final Size size;
  const WelcomeImage({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.imageSpreadsheet);
  }
}
