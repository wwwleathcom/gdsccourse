import 'package:flutter/material.dart';
import 'pages/animated_limiter_page.dart';
import 'pages/animated_list_page.dart';
import 'pages/auth_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import '../config/helper.dart' as helper;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: helper.myRouteList[0][1],
      routes: {
        helper.myRouteList[0][1]: (context) => const AuthPage(),
        helper.myRouteList[1][1]: (context) => const LoginPage(),
        helper.myRouteList[2][1]: (context) => const RegisterPage(),
        helper.myRouteList[3][1]: (context) => const HomePage(),
        helper.myRouteList[4][1]: (context) => const AnimatedLimiterPage(),
        helper.myRouteList[5][1]: (context) => const AnimatedListPage(),
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
