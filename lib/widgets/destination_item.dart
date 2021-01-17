import 'package:flutter/material.dart';
import 'package:school_van/widgets/arrived_dropped_button.dart';

class DestinationItem extends StatelessWidget {
  final String imageUrl;
  final String studentName;
  final String text;
  final Color bcolor;

  DestinationItem(this.imageUrl, this.studentName, this.text, this.bcolor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      height: 75,
      width: 375,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                studentName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ArrivedButtonButton('', text, bcolor)
          ],
        ),
      ),
    );
  }
}
