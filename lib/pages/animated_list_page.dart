import 'package:flutter/material.dart';
import '../components/my_button.dart';
import '../config/helper.dart' as helper;
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimatedListPage extends StatefulWidget {
  const AnimatedListPage({super.key});

  @override
  State<AnimatedListPage> createState() => _AnimatedListPageState();
}

class _AnimatedListPageState extends State<AnimatedListPage> {
  int lenghtArray = 1;
  List<String> items = List<String>.generate(5, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: MyButton(
          myOnTap: () {
            setState(() {
              items.add('Item ${items.length + 1}');
            });
          },
          myTextButton: '+',
          myFillColor: const Color(0xFFFFFFFF),
          myTextColor: const Color(0xFF000000),
        ),
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
                duration: const Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                horizontalOffset: 300,
                verticalOffset: 50,
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 10,
                  width: size.width * 0.9,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      color: helper.frontColor,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: ,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            items[index],
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            items.removeAt(index);
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: items.length,
        ),
      ),
    );
  }
}
