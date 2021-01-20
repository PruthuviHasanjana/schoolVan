import 'package:flutter/foundation.dart';

class Parent {
  final String id;
  final String name;
  final String address;
  final String phoneNo;
  double balance;
  final int noOfChildren;

  Parent({
    @required this.id,
    @required this.name,
    @required this.address,
    @required this.phoneNo,
    this.balance = 0.0,
    @required this.noOfChildren,
  });
}
