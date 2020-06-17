import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'search.dart';
import 'allRecipes.dart';
import 'selectedRecipe.dart';
import 'healthyFood.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.grey[100],
      // padding: EdgeInsets.all(15),
      child: ListView(
        // padding: EdgeInsets.only(right:15),
        scrollDirection: Axis.vertical,
        children: <Widget> [
          HorizontalScroll(),
          SearchBar(),
          Recipes(),
          SelectedRecipe(),
          HealthyRecipes()
        ]
      ),
      );
  }
}

class HorizontalScroll extends StatelessWidget {

  getStarted (String imageVal, String title, String subTitle) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: const EdgeInsets.only(right: 10.0),
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
    return Container(
      margin: EdgeInsets.only(top: 100.0, bottom: 20.0),
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          getStarted('assets/images/light.png', "Happy Food Cooking", "Get Started"),
          getStarted('assets/images/light.png', "Happy Food Cooking", "Get Started"),
          getStarted('assets/images/light.png', "Happy Food Cooking", "Get Started"),
        ],
      ),
    ); 
  }
}