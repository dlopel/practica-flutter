import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String url;

  const ImageCard({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/dog-loader.gif'),
            image: AssetImage(url),
            fit: BoxFit.cover,
            height: 360,
            width: double.infinity,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text('Hola Mundo'),
          )
        ],
      ),
      clipBehavior: Clip.antiAlias,
    );
  }
}
