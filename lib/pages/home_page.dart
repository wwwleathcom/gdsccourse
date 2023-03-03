import 'package:flutter/material.dart';
import '../config/helper.dart' as helper;
import '../components/my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        elevation: 0,
        backgroundColor: helper.frontColor,
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            child: MyButton(
              myOnTap: () {
                Navigator.pushNamed(context, helper.routeList[4]);
              },
              myTextButton: 'Animated Limiter',
              myFillColor: helper.frontColor,
              myTextColor: const Color(0xFFFFFFFF),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            child: MyButton(
              myOnTap: () {
                Navigator.pushNamed(context, helper.routeList[5]);
              },
              myTextButton: 'Animated List',
              myFillColor: helper.frontColor,
              myTextColor: const Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
