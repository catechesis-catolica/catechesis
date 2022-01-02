import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:catechesis/shared/auth/auth_controller.dart';
import 'package:catechesis/shared/themes/appcolors.dart';
import 'package:catechesis/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: AnimatedCard(
        direction: AnimatedCardDirection.left,
        child: Stack(
          children: [
            Center(child: Image.asset(AppImages.logoFull)),
          ],
        ),
      )
    );
  }
}