import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard(),
          ImageCard(url: 'assets/dog.jpg'),
          ImageCard(url: 'assets/dog.jpg'),
          ImageCard(url: 'assets/dog.jpg'),
          ImageCard(url: 'assets/dog.jpg')
        ],
      ),
    );
  }
}
