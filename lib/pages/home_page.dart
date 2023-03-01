import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
            child: Text(
          "LOGGED IN AS: EMAIL USER ",
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}
