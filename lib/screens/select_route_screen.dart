import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/add_remove_botton.dart';
import '../widgets/wide_button.dart';
import './destination_screen.dart';

class SelectRouteScreen extends StatelessWidget {
  static const String routeName = '/select-route';

  @override
  Widget build(BuildContext context) {
    final routeType = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text('Select route'),
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
                            'Step 01',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                          Text(
                            'ada Dina oba yna margaya thoranna.',
                            style: TextStyle(
                              fontSize: 20,
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
                          height: 440,
                          padding: EdgeInsets.only(top: 15),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      DestinationScreen.routeName,
                                      arguments: [routeType, 'Route 01'],
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      'https://picsum.photos/250?image=9',
                                      'Route 01',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      DestinationScreen.routeName,
                                      arguments: [routeType, 'Route 02'],
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      'https://picsum.photos/250?image=9',
                                      'Route 02',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      DestinationScreen.routeName,
                                      arguments: [routeType, 'Route 03'],
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      'https://picsum.photos/250?image=9',
                                      'Route 03',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      DestinationScreen.routeName,
                                      arguments: [routeType, 'Route 04'],
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      'https://picsum.photos/250?image=9',
                                      'Route 05',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      DestinationScreen.routeName,
                                      arguments: [routeType, 'Route 05'],
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      'https://picsum.photos/250?image=9',
                                      'Route 05',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      DestinationScreen.routeName,
                                      arguments: [routeType, 'Route 06'],
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      'https://picsum.photos/250?image=9',
                                      'Route 06',
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
              AddRemoveButton('', 'Add a route', Colors.blue),
            ]));
  }
}
