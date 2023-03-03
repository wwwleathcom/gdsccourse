import 'package:flutter/material.dart';
import 'animated_limiter_page.dart';
import 'animated_list_page.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'register_page.dart';
import '../config/helper.dart' as helper;

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context) {
    switch (helper.isAuth) {
      case 1: return const LoginPage();
      case 2: return const RegisterPage();
      case 3: return const HomePage();
      case 4: return const AnimatedLimiterPage();
      case 5: return const AnimatedListPage();
      default: return const LoginPage();
    }
  }
}
