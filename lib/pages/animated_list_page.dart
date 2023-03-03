import 'package:flutter/material.dart';
import '../config/helper.dart' as helper;
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimatedListPage extends StatefulWidget {
  const AnimatedListPage({super.key});

  @override
  State<AnimatedListPage> createState() => _AnimatedListPageState();
}

class _AnimatedListPageState extends State<AnimatedListPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        elevation: 0,
        backgroundColor: helper.frontColor,
        title: const Text('Animated List'),
        centerTitle: true,
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
             delay: const Duration(milliseconds: 200),
              child: SlideAnimation(
                duration: const Duration(milliseconds:2500 ),
                curve: Curves.fastLinearToSlowEaseIn,
                horizontalOffset: 300,
                verticalOffset: 50,
                child: Container(
                  height: size.height / 10,
                  width: size.width * 0.9,
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        )
                      ]),
                ),
              ),
            );
          },
          itemCount: 20,
        ),
      ),
    );
  }
}


// ListTile(
//             title: Text('item - ${index + 1}'),
//           )