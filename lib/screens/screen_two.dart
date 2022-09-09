import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  AlertDialog androidAlertDialog(BuildContext context) {
    return AlertDialog(
      title: Text('I am a Alert dialog'),
      content: Text('Im a body'),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Ok'),
        )
      ],
    );
  }

  CupertinoAlertDialog iosAlertDialog(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text('I am a Alert dialog'),
      content: Text('Im a body'),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Ok'),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body: Column(children: [
        TextButton(
            onPressed: () => showDialog(
                barrierDismissible: true,
                context: context,
                builder: (context) => iosAlertDialog(context)),
            child: Text('Open Dialog'))
      ]),
    );
  }
}
