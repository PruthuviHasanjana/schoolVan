import 'package:flutter/material.dart';
import 'package:school_van/widgets/destination_item.dart';
import '../constants.dart';
import '../widgets/add_remove_botton.dart';

class DestinationScreen extends StatelessWidget {
  static const String routeName = '/destination';

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context).settings.arguments as List;
    final routeType = data[0].toString();
    final routeName = data[1].toString();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text('Destinations'),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Step 02',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                          Text(
                            'Pick and drop the kids',
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
                          height: 485,
                          padding: EdgeInsets.only(top: 15),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: DestinationItem(
                                    '',
                                    'Student 1 name',
                                    'Arrived',
                                    Colors.blue,
                                  ),
                                ),
                                Container(
                                  child: DestinationItem(
                                      'https://picsum.photos/250?image=9',
                                      'Student 2 name',
                                      'Arrived',
                                      Colors.blue),
                                ),
                                Container(
                                  child: DestinationItem(
                                      'https://picsum.photos/250?image=9',
                                      'Student 3 name',
                                      'Arrived',
                                      Colors.blue),
                                ),
                                Container(
                                  child: DestinationItem(
                                      'https://picsum.photos/250?image=9',
                                      'Student 4 name',
                                      'Arrived',
                                      Colors.blue),
                                ),
                                Container(
                                  child: DestinationItem(
                                      'https://picsum.photos/250?image=9',
                                      'Student 1 name',
                                      'Dropped',
                                      Colors.red),
                                ),
                                Container(
                                  child: DestinationItem(
                                      'https://picsum.photos/250?image=9',
                                      'Student 2 name',
                                      'Dropped',
                                      Colors.red),
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
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: AddRemoveButton('', 'Finished', Colors.green)),
            ]));
  }
}
