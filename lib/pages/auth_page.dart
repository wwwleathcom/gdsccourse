import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'register_page.dart';

class AuthPage extends StatelessWidget {
  final int isAuth = 2;
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // isAuth = 1 -> user is logged in go to home page
      // isAuth = 2 -> user is NOT logged in go to login page
      // isAuth = 2 -> user is NOT logged in go to register page
      body: isAuth == 1 ? const HomePage() : isAuth == 2 ? const LoginPage() : const RegisterPage(),
    );
  }
}
