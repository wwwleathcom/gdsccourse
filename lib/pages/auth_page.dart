import 'package:flutter/material.dart';
import 'animated_list_page.dart';
import 'login_page.dart';
import 'register_page.dart';
import '../config/helper.dart' as helper;

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: helper.isAuth == 1
          ? const AnimatedListPage()
          : helper.isAuth == 2
              ? const LoginPage()
              : const RegisterPage(),
    );
  }
}
