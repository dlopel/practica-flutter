import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.abc_outlined),
            title: Text('I´m a Card'),
            subtitle: Text('I´m a Subtitle'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Left')),
              TextButton(onPressed: () {}, child: Text('Right'))
            ],
          )
        ],
      ),
    );
  }
}
