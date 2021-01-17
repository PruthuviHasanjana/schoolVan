import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/add_remove_botton.dart';
import '../widgets/wide_button.dart';
import './destination_screen.dart';
import 'student_details_screen.dart';

class StudentListScreen extends StatelessWidget {
  static const String routeName = '/student-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text('Student list'),
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
                            'Select the student',
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
                                      StudentDetailsScreen.routeName,
                                      arguments: 'Student 01',
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      '',
                                      'Student 01',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      StudentDetailsScreen.routeName,
                                      arguments: 'Student 02',
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      '',
                                      'Student 02',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      StudentDetailsScreen.routeName,
                                      arguments: 'Student 03',
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      '',
                                      'Student 03',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      StudentDetailsScreen.routeName,
                                      arguments: 'Student 04',
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      '',
                                      'Student 04',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      StudentDetailsScreen.routeName,
                                      arguments: 'Student 05',
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      '',
                                      'Student 05',
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                      StudentDetailsScreen.routeName,
                                      arguments: 'Student 06',
                                    );
                                  },
                                  child: Container(
                                    width: 250,
                                    height: 100,
                                    child: WideButton(
                                      '',
                                      'Student 06',
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
