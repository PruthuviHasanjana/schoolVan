import '../constants.dart';
import '../size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        'Hi......',
        style: TextStyle(
          fontSize: getProportionateScreenWidth(20),
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(text),
      Image.network(
        image,
        height: getProportionateScreenHeight(150),
        width: getProportionateScreenWidth(300),
      ),
    ]);
  }
}
