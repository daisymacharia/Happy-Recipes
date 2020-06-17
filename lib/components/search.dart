import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<SearchBar> {
  String _searchText = "";
  final TextEditingController _filter = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: new InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: new Icon(Icons.search, color: Colors.grey[350], size: 30.0,),
        hintText: 'Find Your Favourite Recipes',
        hintStyle: TextStyle(color: Colors.grey[350]),
        border: new OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(
            const Radius.circular(30.0),
          ),
        ),
      ),
    );
  }
}