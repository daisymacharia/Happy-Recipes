import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthyRecipes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HaelthyFoodState();
  }
}

class HaelthyFoodState extends State<HealthyRecipes> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Column( 
        children: <Widget> [
          Container (
            padding: EdgeInsets.only(right:30, left: 30),

            child: Row (
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child:  Text("Healthy Food"),
                  ),
                Container( 
                  width: 50, 
                  height: 20,
                  child:RaisedButton(
                    padding: const EdgeInsets.all(0.0),
                    child: Text(
                      'See All', 
                      // textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 10,  )
                    ),
                    onPressed: () {}
                  ),
                ),
              ],
            ),
          ),
      Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            margin: const EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/light.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            width: 400,
        ),
        ]
      )
      ),
        ]
      )
    );
  }
  
}