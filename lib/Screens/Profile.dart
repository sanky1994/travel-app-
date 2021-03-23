import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget _buildImages() {
    return Container(
      height: 300.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 150.0,
              width: 120.0,
              child: Image.asset("assets/san.jpeg"),
            ),
            Positioned(
              top: 0.0,
              child: Container(
                height: 200.0,
                width: 200.0,
                child: Image.asset("assets/rome.jpeg"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildName() {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "Amanda Rhodes",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(50, 59, 69, 1),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 145, top: 15),
            child: Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.mapMarkerAlt,
                  size: 20,
                  color: Colors.black87,
                ),
                SizedBox(width: 10),
                Text(
                  "Madrid, Spain",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(168, 182, 200, 1),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRaisedButton() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(110, 20, 20, 0),
            child: Row(
              children: <Widget>[
                RaisedButton(
                  elevation: 5.0,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5),
                    side: BorderSide(color: Colors.deepOrange),
                  ),
                  color: Color.fromRGBO(250, 42, 0, 1),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    print("kwfnjkw");
                  },
                  child: Text(
                    "Follow",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  elevation: 5.0,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5),
                    side: BorderSide(
                      color: Color.fromRGBO(92, 105, 121, 1),
                    ),
                  ),
                  color: Colors.white,
                  textColor: Colors.black87,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    print("kwfnjkw");
                  },
                  child: Text(
                    "Message",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNumbers() {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              "26",
              style: TextStyle(
                color: Color.fromRGBO(50, 59, 69, 1),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Trips",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(168, 182, 200, 1),
                fontFamily: "RobotoSlab-Regular",
              ),
            ),
          ],
        ),
        SizedBox(width: 50),
        Column(
          children: <Widget>[
            Text(
              "312",
              style: TextStyle(
                color: Color.fromRGBO(50, 59, 69, 1),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Photos",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(168, 182, 200, 1),
                fontFamily: "RobotoSlab-Regular",
              ),
            ),
          ],
        ),
        SizedBox(width: 50),
        Column(
          children: <Widget>[
            Text(
              "34.5k",
              style: TextStyle(
                color: Color.fromRGBO(50, 59, 69, 1),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Followers",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(168, 182, 200, 1),
                fontFamily: "RobotoSlab-Regular",
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFollower() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/one.jpeg"),
            ),
          ),
          Container(
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/two.jpeg"),
            ),
          ),
          Container(
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/three.jpeg"),
            ),
          ),
          Container(
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/four.jpeg"),
            ),
          ),
          Container(
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/five.jpeg"),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("assets/ProfileBack.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 500,
                height: 220,
                alignment: Alignment.center,
              ),
              Positioned(
                child: Container(
                  padding: EdgeInsets.only(top: 170, left: 150),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/one.jpeg'),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: _buildName(),
          ),
          Container(
            child: _buildRaisedButton(),
          ),
          Container(
            padding: EdgeInsets.only(right: 20, left: 20, top: 0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Divider(
                    color: Color.fromRGBO(103, 103, 103, 0.24),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Color.fromRGBO(103, 103, 103, 0.24),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(90, 20, 0, 0),
            child: _buildNumbers(),
          ),
          Container(
            padding: EdgeInsets.only(right: 20, left: 20, top: 30),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Divider(
                    color: Color.fromRGBO(103, 103, 103, 0.24),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Color.fromRGBO(103, 103, 103, 0.24),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text("Photos"),
          ),
          Container(
            child: _buildImages(),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Followers",
                  style: TextStyle(
                    color: Color.fromRGBO(50, 59, 69, 1),
                    fontSize: 16,
                    fontFamily: "RobotoSlab-Bold",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 250),
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: Color.fromRGBO(250, 42, 0, 1),
                    fontFamily: "RobotoSlab-Regular",
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: _buildFollower(),
          ),
        ],
      ),
    );
  }
}
