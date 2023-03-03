library helper;

import 'package:flutter/material.dart';

////////////////// Start of Page ////////////////////
// isAuth = 1 -> user is logged in go to home page
// isAuth = 2 -> user is NOT logged in go to login page
// isAuth = 3 -> user is NOT logged in go to register page
int isAuth = 0;

///////////////////Title Of Page ///////
List<String> title = [
  "LOGIN",
  "REGISTER",
];

///////////////////Title Of Page ///////
List<String> routeList = [
  '/',
  '/LoginPage',
  '/RegisterPage',
  '/HomePage',
  '/AnimatedLimiterPage',
  '/AnimatedListPage',
];

////////////////////Colors////////////////////
Color frontColor = const Color.fromARGB(255, 11, 76, 216);
