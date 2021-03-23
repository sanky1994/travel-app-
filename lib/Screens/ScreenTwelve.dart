import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenTwelve extends StatefulWidget {
  @override
  _ScreenTwelveState createState() => _ScreenTwelveState();
}

class _ScreenTwelveState extends State<ScreenTwelve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera"),
        actions: [
          IconButton(
            icon: Icon(Icons.keyboard_arrow_down),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              "Add location...",
              style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(250, 42, 0, 1),
                fontFamily: "RobotoSlab-Regular",
              ),
            ),
          ),
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/personImage.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            width: 500,
            height: 400,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 320),
                  child: IconButton(
                    icon: Icon(
                      Icons.sync,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      print("this is the button");
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 320),
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.chargingStation,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      print("this is the button");
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Type here.",
              style: TextStyle(
                color: Color.fromRGBO(168, 182, 200, 1),
                fontSize: 12,
                fontFamily: "RobotoSlab-Regular",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 50, right: 20),
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(
                Icons.sync,
                size: 70,
                color: Color.fromRGBO(250, 42, 0, 1),
              ),
              onPressed: () {
                print("wfoqwjiw");
              },
            ),
          ),
        ],
      ),
    );
  }
}
