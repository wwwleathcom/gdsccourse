import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'register_page.dart';
import '../config/helper.dart' as globals;

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: globals.isAuth == 1 ? const HomePage() : globals.isAuth == 2 ? const LoginPage() : const RegisterPage(),
    );
  }
}
