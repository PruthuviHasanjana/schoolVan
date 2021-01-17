import 'package:flutter/material.dart';

class ArrivedButtonButton extends StatelessWidget {
  final String imageUrl;
  final String text;
  final Color bcolor;

  ArrivedButtonButton(this.imageUrl, this.text, this.bcolor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      height: 50,
      width: 100,
      child: Card(
        color: bcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
