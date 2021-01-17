import 'package:flutter/material.dart';
import './parent_details_screen.dart';
import '../constants.dart';
import './select_route_screen.dart';
import '../size_config.dart';
import '../widgets/body_splash_screen.dart';
import '../widgets/big_square_button.dart';
import '../widgets/end_button.dart';
import '../widgets/circle_button.dart';
import 'parent_list_screen.dart';
import 'payment_list_screen.dart';
import 'student_list_screen.dart';

class DriverOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text('I\'m a driver.....'),
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
                      height: 200,
                      child: BodySplashScreen(),
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
                          height: 485,
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                          SelectRouteScreen.routeName,
                                          arguments: 'Home');
                                    },
                                    child: Container(
                                      width: 170,
                                      height: 250,
                                      child: BigSquareButton(
                                          'https://picsum.photos/250?image=9',
                                          'Pick up from Home'),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                          SelectRouteScreen.routeName,
                                          arguments: 'School');
                                    },
                                    child: Container(
                                      width: 170,
                                      height: 250,
                                      child: BigSquareButton(
                                          'https://picsum.photos/250?image=9',
                                          'Pick up from School'),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 15, left: 5, right: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                            StudentListScreen.routeName);
                                      },
                                      child: CircleButton(
                                          'https://picsum.photos/250?image=9',
                                          'Students details'),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                            ParentListScreen.routeName);
                                      },
                                      child: CircleButton(
                                          'https://picsum.photos/250?image=9',
                                          'Parents details'),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                            PaymentListScreen.routeName);
                                      },
                                      child: CircleButton(
                                          'https://picsum.photos/250?image=9',
                                          'Payment details'),
                                    ),
                                  ],
                                ),
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
