import 'package:flutter/material.dart';

class WideButton extends StatelessWidget {
  final String imageUrl;
  final String text;
  final Color bColor;

  WideButton(this.imageUrl, this.text, this.bColor);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 30),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
