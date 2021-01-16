import 'package:flutter/material.dart';

class EndButton extends StatelessWidget {
  final String text;
  final Color bcolor;

  EndButton(this.text, this.bcolor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: bcolor,
      padding: EdgeInsets.all(20),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
