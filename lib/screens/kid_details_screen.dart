import 'package:flutter/material.dart';
import 'package:school_van/widgets/add_remove_botton.dart';
import 'package:school_van/widgets/end_button.dart';
import '../widgets/wide_button.dart';

import '../constants.dart';
import '../size_config.dart';

class KidDetailsScreen extends StatelessWidget {
  static const String routeName = '/kid-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Kid Details'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildDetailsCard('Kid\'s name', 'Pruthuvi Hasanjana'),
            buildDetailsCard('Current position', 'In school'),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: AddRemoveButton(
                '',
                'Ok',
                Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildBigCard(String title1, String title2, String value) {
    return Container(
      margin: EdgeInsets.only(
          top: getProportionateScreenHeight(20),
          right: getProportionateScreenHeight(10),
          left: getProportionateScreenHeight(10)),
      height: getProportionateScreenHeight(200),
      width: getProportionateScreenWidth(150),
      child: Card(
        elevation: 6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title1,
              style: TextStyle(fontSize: getProportionateScreenHeight(17)),
            ),
            Text(
              title2,
              style: TextStyle(fontSize: getProportionateScreenHeight(17)),
            ),
            Text(
              value,
              style: TextStyle(fontSize: getProportionateScreenHeight(40)),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDetailsCard(String title, String name) {
    return Container(
      margin: EdgeInsets.only(
        top: getProportionateScreenHeight(10),
      ),
      width: getProportionateScreenWidth(300),
      child: Card(
        elevation: 6,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: kPrimaryColor,
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(17),
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(17),
                  color: kPrimaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
