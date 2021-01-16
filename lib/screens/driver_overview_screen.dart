import 'package:flutter/material.dart';
import './select_route_screen.dart';
import '../size_config.dart';
import '../widgets/body_splash_screen.dart';
import '../widgets/big_square_button.dart';
import '../widgets/end_button.dart';
import '../widgets/circle_button.dart';

class DriverOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
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
                      height: 245,
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
                          height: 440,
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
                                          SelectRouteScreen.routeName);
                                    },
                                    child: Container(
                                      width: 170,
                                      height: 250,
                                      child: BigSquareButton(
                                          'https://picsum.photos/250?image=9',
                                          'Pick up from Home'),
                                    ),
                                  ),
                                  Container(
                                    width: 170,
                                    height: 250,
                                    child: BigSquareButton(
                                        'https://picsum.photos/250?image=9',
                                        'Pick up from School'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: CircleButton(
                                          'https://picsum.photos/250?image=9',
                                          'Student details'),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: CircleButton(
                                          'https://picsum.photos/250?image=9',
                                          'Parents details'),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: CircleButton(
                                          'https://picsum.photos/250?image=9',
                                          'Payments details'),
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
