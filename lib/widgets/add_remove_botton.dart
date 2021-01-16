import 'package:flutter/material.dart';

class AddRemoveButton extends StatelessWidget {
  final String imageUrl;
  final String text;
  final Color bcolor;

  AddRemoveButton(this.imageUrl, this.text, this.bcolor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      height: 70,
      width: 200,
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
                fontSize: 20,
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
