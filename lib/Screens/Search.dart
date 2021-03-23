import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Widget _searchBox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Material(
          elevation: 25.0,
          shadowColor: Color.fromRGBO(103, 103, 103, 0.24),
          child: Container(
            alignment: Alignment.centerLeft,
            height: 40.0,
            child: TextField(
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(168, 182, 200, 1),
                ),
                hintText: "Search",
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black87,
            ),
            onPressed: () {
              print("this is the test of the back button");
            },
          ),
          backgroundColor: Colors.white38,
          title: Text(
            "Search",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.layers),
              color: Colors.black87,
              onPressed: () {
                print("this is the random icon");
              },
            )
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: _searchBox(),
        ),
      ),
    );
  }
}
