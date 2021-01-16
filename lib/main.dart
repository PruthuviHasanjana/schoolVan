import 'package:flutter/material.dart';
import 'package:school_van/screens/select_route_screen.dart';

import './screens/driver_overview_screen.dart';

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
      },
    );
  }
}
