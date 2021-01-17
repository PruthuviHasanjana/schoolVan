import 'package:flutter/material.dart';
import 'package:school_van/widgets/add_remove_botton.dart';

import '../constants.dart';
import '../size_config.dart';

class PaymentDetailsScreen extends StatelessWidget {
  static const String routeName = '/payment-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Payment Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildDetailsCard('Parent\'s name', 'Pruthuvi Hasanjana'),
                  buildDetailsCard('Phone Number', '0716067110'),
                  buildDetailsCard('Balance', '-Rs. 1000'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildBigCard('Reminding', 'payment'),
                    ],
                  ),
                ]),
          )),
        ],
      ),
    );
  }

  Container buildBigCard(String title1, String title2) {
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
              style: TextStyle(
                fontSize: getProportionateScreenHeight(17),
                color: kPrimaryColor,
              ),
            ),
            Text(
              title2,
              style: TextStyle(
                  fontSize: getProportionateScreenHeight(17),
                  color: kPrimaryColor),
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
