import 'package:flutter/material.dart';
import 'package:school_van/widgets/add_remove_botton.dart';
import 'package:school_van/widgets/end_button.dart';
import '../widgets/wide_button.dart';

import '../constants.dart';
import '../size_config.dart';

class StudentDetailsScreen extends StatelessWidget {
  static const String routeName = '/student-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Student Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildDetailsCard('Student\'s name', 'Pruthuvi Hasanjana'),
                  buildDetailsCard('School', 'School 01'),
                  buildDetailsCard('Grade', '5'),
                  buildDetailsCard('Parent\'s name', 'Nihal Wickramasiri'),
                  buildDetailsCard('Village', 'Galigamuwa'),
                  buildDetailsCard('Phone Number', '0716067110'),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     buildBigCard('Total', 'Mark', stringMark),
                  //     buildBigCard('Completed', 'Days', noOfFinishedLessons.toString()),
                  //   ],
                  // ),
                  // if (noOfFinishedLessons == 50)
                  //   Container(
                  //     margin: EdgeInsets.only(
                  //         top: getProportionateScreenHeight(10),
                  //         left: getProportionateScreenHeight(10),
                  //         right: getProportionateScreenHeight(10)),
                  //     child: RaisedButton(
                  //       color: kPrimaryColor,
                  //       onPressed: () {
                  //         Navigator.of(context)
                  //             .pushNamed(IssueCertificateScreen.routeName);
                  //       },
                  //       child: Column(
                  //         children: [
                  //           Container(
                  //             alignment: Alignment.center,
                  //             width: double.infinity,
                  //             padding: EdgeInsets.all(15),
                  //             child: Text(
                  //               'සහතික පත්‍රය ලබා ගැනීමට.',
                  //               style: TextStyle(
                  //                 fontSize: getProportionateScreenHeight(18),
                  //                 color: Colors.white,
                  //               ),
                  //             ),
                  //           ),
                  //           Container(
                  //             alignment: Alignment.center,
                  //             width: double.infinity,
                  //             padding: EdgeInsets.only(
                  //                 bottom: getProportionateScreenHeight(15)),
                  //             child: Text(
                  //               'Click here',
                  //               style: TextStyle(
                  //                 fontSize: getProportionateScreenHeight(18),
                  //                 fontWeight: FontWeight.bold,
                  //                 color: Colors.white,
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   )
                ]),
          )),
          Row(
            children: [
              AddRemoveButton('', 'Delete', Colors.red),
              AddRemoveButton('', 'Ok', Colors.green),
            ],
          ),
        ],
      ),
    );
  }

  Container buildBigCard(String title1, String title2, String value) {
    return Container(
      margin: EdgeInsets.only(
          top: getProportionateScreenHeight(20),
          right: getProportionateScreenHeight(10),
          left: getProportionateScreenHeight(10)),
      height: getProportionateScreenHeight(200),
      width: getProportionateScreenWidth(150),
      child: Card(
        elevation: 6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title1,
              style: TextStyle(fontSize: getProportionateScreenHeight(17)),
            ),
            Text(
              title2,
              style: TextStyle(fontSize: getProportionateScreenHeight(17)),
            ),
            Text(
              value,
              style: TextStyle(fontSize: getProportionateScreenHeight(40)),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDetailsCard(String title, String name) {
    return Container(
      margin: EdgeInsets.only(
        top: getProportionateScreenHeight(10),
      ),
      width: getProportionateScreenWidth(300),
      child: Card(
        elevation: 6,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: kPrimaryColor,
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(17),
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(17),
                  color: kPrimaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
