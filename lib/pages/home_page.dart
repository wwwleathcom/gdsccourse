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
        title: Text(helper.myRouteList[3][0]),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            child: MyButton(
              myOnTap: () {
                Navigator.pushNamed(context, helper.myRouteList[4][1]);
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
                Navigator.pushNamed(context, helper.myRouteList[5][1]);
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
