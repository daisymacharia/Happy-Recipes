import 'package:flutter/material.dart';

main() {
  runApp(MainApp());
}


class MainApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Happy Recipes"),
        ),
      ),
    );
  }
}
