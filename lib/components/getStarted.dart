import 'package:flutter/material.dart';

class HorizontalScroll extends StatelessWidget {

  getStarted (String imageVal, String title, String subTitle) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: const EdgeInsets.only(right: 10.0, left: 10.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageVal),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      width: 350,
      child: Container(
        // constraints: BoxConstraints(maxWidth: 90.0, minHeight: 200.0),
        width: 125,
        padding: EdgeInsets.only(right: 100.0),
        // height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Text(
                title,
                textWidthBasis: TextWidthBasis.parent,
                textAlign: TextAlign.start,
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "RubikOne",
                  fontSize: 20,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Text(
                subTitle,
                textAlign: TextAlign.start,
                style: TextStyle (
                  fontSize: 15,
                  color: Colors.white,
                )
              )
            )
          ],
        ),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      margin: EdgeInsets.symmetric(vertical: 100),
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          getStarted('assets/images/light.png', "Happy Food Cooking", "Get Started"),
          getStarted('assets/images/light.png', "Happy Food Cooking", "Get Started"),
          getStarted('assets/images/light.png', "Happy Food Cooking", "Get Started"),
        ],
      ),
      ),
    ); 
  }
}