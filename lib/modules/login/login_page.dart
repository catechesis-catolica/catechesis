import 'package:catechesis/modules/login/login_controller.dart';
import 'package:catechesis/shared/themes/app_images.dart';
import 'package:catechesis/shared/themes/app_text_styles.dart';
import 'package:catechesis/shared/themes/appcolors.dart';
import 'package:catechesis/shared/widgets/social_login/social_login_button.dart';
import 'package:flutter/material.dart';
//import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack
          (children: [
            Container(
              width: size.width,
              height: size.height * 0.36, //tamanho do background vermelho
              color: AppColors.primary,
            ),
            Positioned(
              top: 40,
              left: 0, 
              right: 0, 
              child: Image.asset(
                AppImages.jesus, 
                width: 208, 
                height: 373,
              )),
            Positioned(
              bottom: size.height * 0.05,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logoMini),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                    child: Text(
                     "Ide por todo o mundo, e pregai o Evangelho a toda criatura",
                      textAlign: TextAlign.center, 
                      style: TextStyles.titleHome,
                    ),
                  ),
                  Padding(
                    padding: 
                      const EdgeInsets.only(left: 40, right:40, top: 80),
                    child: SocialLoginButton(
                      onTap: () {
                        controller.googleSignIn(context);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}