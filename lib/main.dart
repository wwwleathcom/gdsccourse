import 'package:flutter/material.dart';
import 'pages/animated_list_page.dart';
import 'pages/auth_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import '../config/helper.dart' as helper;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: helper.routeList[0],
      routes: {
        helper.routeList[0]: (context) => const AuthPage(),
        helper.routeList[1]: (context) => const LoginPage(),
        helper.routeList[2]: (context) => const RegisterPage(),
        helper.routeList[3]: (context) => const AnimatedListPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const AuthPage(),
    );
  }
}
