import 'package:flutter/material.dart';

class BigSquareButton extends StatelessWidget {
  final String imageUrl;
  final String text;

  BigSquareButton(this.imageUrl, this.text);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 30),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ]),
    );
  }
}
