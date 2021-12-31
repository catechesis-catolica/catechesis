import 'package:catechesis/modules/login/login_page.dart';
import 'package:catechesis/modules/splash/splash_page.dart';
import 'package:catechesis/shared/themes/appcolors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catechesis',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: const LoginPage(),
    );
  }
}
