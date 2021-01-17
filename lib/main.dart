import 'package:flutter/material.dart';
import './screens/parent_details_screen.dart';
import './screens/student_list_screen.dart';
import './screens/parent_list_screen.dart';

import './screens/destination_screen.dart';
import './screens/select_route_screen.dart';
import './screens/student_details_screen.dart';

import './screens/driver_overview_screen.dart';
import 'screens/payment_details_screen.dart';
import 'screens/payment_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SE project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DriverOverviewScreen(),
      routes: {
        SelectRouteScreen.routeName: (ctx) => SelectRouteScreen(),
        DestinationScreen.routeName: (ctx) => DestinationScreen(),
        StudentDetailsScreen.routeName: (ctx) => StudentDetailsScreen(),
        ParentDetailsScreen.routeName: (ctx) => ParentDetailsScreen(),
        PaymentDetailsScreen.routeName: (ctx) => PaymentDetailsScreen(),
        StudentListScreen.routeName: (ctx) => StudentListScreen(),
        ParentListScreen.routeName: (ctx) => ParentListScreen(),
        PaymentListScreen.routeName: (ctx) => PaymentListScreen(),
      },
    );
  }
}
