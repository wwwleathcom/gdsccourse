library globals;

import 'package:flutter/material.dart';

////////////////// Start of Page ////////////////////
// isAuth = 1 -> user is logged in go to home page
// isAuth = 2 -> user is NOT logged in go to login page
// isAuth = 3 -> user is NOT logged in go to register page
int isAuth = 2;

///////////////////Title Of Page ///////
List<String> title = [
  "LOGIN",
  "REGISTER",
];

////////////////////Colors////////////////////
Color frontColor = const Color(0xFF6339B2);
