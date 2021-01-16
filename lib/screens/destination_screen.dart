import 'package:flutter/material.dart';
import '../widgets/add_remove_botton.dart';
import '../widgets/wide_button.dart';

class SelectRouteScreen extends StatelessWidget {
  static const String routeName = '/select-route';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                                Container(
                                  width: 250,
                                  height: 100,
                                  child: WideButton(
                                      'https://picsum.photos/250?image=9',
                                      'Route 01'),
                                ),
                                Container(
                                  width: 250,
                                  height: 100,
                                  child: WideButton(
                                      'https://picsum.photos/250?image=9',
                                      'Route 02'),
                                ),
                                Container(
                                  width: 250,
                                  height: 100,
                                  child: WideButton(
                                      'https://picsum.photos/250?image=9',
                                      'Route 03'),
                                ),
                                Container(
                                  width: 250,
                                  height: 100,
                                  child: WideButton(
                                      'https://picsum.photos/250?image=9',
                                      'Route 04'),
                                ),
                                Container(
                                  width: 250,
                                  height: 100,
                                  child: WideButton(
                                      'https://picsum.photos/250?image=9',
                                      'Route 05'),
                                ),
                                Container(
                                  width: 250,
                                  height: 100,
                                  child: WideButton(
                                      'https://picsum.photos/250?image=9',
                                      'Route 06'),
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
