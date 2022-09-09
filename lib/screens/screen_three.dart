import 'dart:math';

import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  double? height;
  double? width;
  Color? color;

  _ScreenThreeState() {
    change();
  }

  void change() {
    height = Random().nextDouble() * 300;
    width = Random().nextDouble() * 300;
    color = Color.fromRGBO(
        Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Three'),
        actions: const [
          CircleAvatar(
            child: Text('DL'),
          )
        ],
      ),
      body: Center(
        child: AnimatedContainer(
          height: height,
          width: width,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          change();
          setState(() {});
        },
        child: const Icon(Icons.add_sharp),
      ),
    );
  }
}
