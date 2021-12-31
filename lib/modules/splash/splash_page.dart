import 'package:catechesis/shared/themes/app_images.dart';
import 'package:catechesis/shared/themes/appcolors.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.logoFull)),
        ],
      )
    );
  }
}