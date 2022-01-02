import 'package:catechesis/modules/home/home_page.dart';
import 'package:catechesis/modules/splash/splash_page.dart';
import 'package:catechesis/shared/models/user_model.dart';
import 'package:flutter/material.dart';
import 'modules/login/login_page.dart';
import 'shared/themes/appcolors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remover o banner padrão
      title: 'Catechesis',
      theme: ThemeData(
        primaryColor: AppColors.primary),
      initialRoute: "/splash",
      routes: {
        "/splash" : (context) => const SplashPage(),
        "/home" : (context) => HomePage(
          user: ModalRoute.of(context)!.settings.arguments as UserModel,
        ),
        "/login" : (context) => const LoginPage(),
      }
    );
  }
}