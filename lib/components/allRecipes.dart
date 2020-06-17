import 'package:flutter/material.dart';

class Recipes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RecipesState();
  }
}

class RecipesState extends State<Recipes> {

  allRecipes (String imageVal, String title) {
    return  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container (
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  padding: EdgeInsets.all(10.0),
                  width: 70,
                  height: 70,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(220,222,229, 0.5)
                  ),
                  child: Image.asset(imageVal),
                ),
                Text(title),
              ]
            );
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromRGBO(236,238,246, 0.8)
      ),
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          allRecipes('assets/images/all.png', "All"),
          allRecipes('assets/images/soups.png', "Soups"),
          allRecipes('assets/images/dessert.png', "Desserts"),
          allRecipes('assets/images/main.png', "Main")
        ]
      ),
    );
  }
}
