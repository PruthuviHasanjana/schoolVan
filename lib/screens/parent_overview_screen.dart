import 'package:flutter/material.dart';
import './parent_details_screen.dart';
import '../constants.dart';
import './select_route_screen.dart';
import '../size_config.dart';
import '../widgets/body_splash_screen.dart';
import '../widgets/big_square_button.dart';
import '../widgets/end_button.dart';
import '../widgets/circle_button.dart';
import 'my_kids_screen.dart';
import 'parent_list_screen.dart';
import 'payment_list_screen.dart';
import 'student_list_screen.dart';

class ParentOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text('I\'m a parent.....'),
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
                                          MyKidsScreen.routeName,
                                          arguments: 'Track');
                                    },
                                    child: Container(
                                      width: 170,
                                      height: 250,
                                      child: BigSquareButton(
                                          'https://picsum.photos/250?image=9',
                                          'Track my kids'),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                          SelectRouteScreen.routeName,
                                          arguments: 'Payment');
                                    },
                                    child: Container(
                                      width: 170,
                                      height: 250,
                                      child: BigSquareButton(
                                          'https://picsum.photos/250?image=9',
                                          'Do a payment'),
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
                                          'children\'s details'),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                            ParentListScreen.routeName);
                                      },
                                      child: CircleButton(
                                          'https://picsum.photos/250?image=9',
                                          'My        details'),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                            PaymentListScreen.routeName);
                                      },
                                      child: CircleButton(
                                          'https://picsum.photos/250?image=9',
                                          'Driver  details'),
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
              EndButton('Call driver', Colors.red),
            ]));
  }
}
