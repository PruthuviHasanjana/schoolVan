import '../size_config.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import './splash_content.dart';

class BodySplashScreen extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<BodySplashScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to School van app",
      "image": "https://tlgur.com/d/4yBoa1Z8"
    },
    {
      "text": "hadissi awasthawaladi demaupiyan danuwath kala haka.",
      "image": "https://tlgur.com/d/4yBoAq28",
    },
    {
      "text": "Daruwan sitina thena balaa gatha haka",
      "image": "https://tlgur.com/d/gpzyRYd8 ",
    },
    {
      "text": "Pahasuwen daruwan kalamanakaranaya karagatha haka",
      "image": "https://tlgur.com/d/gpzyRYd8 ",
    },
    {
      "text": "Alert sewaa sakriya karagatha haka.",
      "image": "https://tlgur.com/d/gpzyRYd8 ",
    },
    {
      "text": "Pahasuwen payment kala haka.",
      "image": "https://tlgur.com/d/gpzyRYd8 ",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 20,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]['image'],
                    text: splashData[index]['text'],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenHeight(2.0)),
                  child: Column(children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ]),
                )),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: getProportionateScreenHeight(2),
      width: currentPage == index
          ? getProportionateScreenHeight(8)
          : getProportionateScreenHeight(12),
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xffd8d8d8),
        borderRadius: BorderRadius.circular(getProportionateScreenHeight(3)),
      ),
    );
  }
}
