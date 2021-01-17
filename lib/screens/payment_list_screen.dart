import 'package:flutter/material.dart';
import '../constants.dart';

import '../widgets/wide_button.dart';
import 'parent_details_screen.dart';
import 'payment_details_screen.dart';
import 'student_details_screen.dart';

class PaymentListScreen extends StatelessWidget {
  static const String routeName = '/payment-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text('Payment list'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 245,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Select the parent',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Card(
                        color: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                        ),
                        child: Container(
                          height: 500,
                          padding: EdgeInsets.only(top: 15),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      PaymentDetailsScreen.routeName,
                                      arguments: 'Parent 01',
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      '',
                                      'Parent 01',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      PaymentDetailsScreen.routeName,
                                      arguments: 'Parent 02',
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      '',
                                      'Parent 02',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      PaymentDetailsScreen.routeName,
                                      arguments: 'Parent 03',
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      '',
                                      'Parent 03',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      PaymentDetailsScreen.routeName,
                                      arguments: 'Parent 04',
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      '',
                                      'Parent 04',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      PaymentDetailsScreen.routeName,
                                      arguments: 'Parent 05',
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      '',
                                      'Parent 05',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      PaymentDetailsScreen.routeName,
                                      arguments: 'Parent 06',
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      '',
                                      'Parent 06',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]));
  }
}
