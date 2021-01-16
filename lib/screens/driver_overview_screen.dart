import 'package:flutter/material.dart';
import '../widgets/big_square_button.dart';
import '../widgets/end_button.dart';

class DriverOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SE Project'),
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
                      height: 150,
                      child: Card(
                        child: Text('Pictures of the features'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    width: 150,
                                    child: BigSquareButton(
                                        'https://picsum.photos/250?image=9',
                                        'Pick up from Home'),
                                  ),
                                  Container(
                                    width: 150,
                                    height: 200,
                                    child: BigSquareButton(
                                        'https://picsum.photos/250?image=9',
                                        'Pick up from School'),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 100,
                                    child: Card(
                                      child: Text('Students details'),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    child: Card(
                                      child: Text('Parents details'),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    child: Card(
                                      child: Text('Payments details'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              EndButton('Emergency', Colors.red),
            ]));
  }
}
