import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Screens/Profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool switchState = false;
  bool switchStateTwo = true;

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Name"),
    );
  }

  Widget _buildCity() {
    return TextFormField(
      decoration: InputDecoration(labelText: "City"),
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: "E-mail"),
    );
  }

  Widget _buildTrips() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            print("yuduygfgw");
          },
          child: Container(
            // height: 130,
            width: 140,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromRGBO(168, 182, 200, 0.15),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Text(
              "Madrid, Spain",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "RobotoSlab-Regular",
                color: Color.fromRGBO(50, 59, 69, 1),
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            print("yuduygfgw");
          },
          child: Container(
            height: 130,
            width: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromRGBO(168, 182, 200, 0.15),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Text(
              "Warsaw, Poland",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "RobotoSlab-Regular",
                color: Color.fromRGBO(50, 59, 69, 1),
              ),
            ),
          ),
        ),
        SizedBox(width: 30),
        GestureDetector(
          onTap: () {
            print("yuduygfgw");
          },
          child: Container(
            width: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromRGBO(168, 182, 200, 0.15),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Text(
              "Moscow, Russia",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "RobotoSlab-Regular",
                color: Color.fromRGBO(50, 59, 69, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCupertino() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              "Show  Followers",
              style: TextStyle(
                  color: Color.fromRGBO(92, 105, 121, 1),
                  fontFamily: "RobotoSlab-Bold",
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: CupertinoSwitch(
                value: switchState,
                onChanged: (bool value) {
                  setState(() {
                    switchState = value;
                  });
                },
                activeColor: Color.fromRGBO(250, 42, 0, 1),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCupertinoTwo() {
    return Row(
      children: <Widget>[
        Text(
          "Show  Photos      ",
          style: TextStyle(
              color: Color.fromRGBO(92, 105, 121, 1),
              fontFamily: "RobotoSlab-Bold",
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: CupertinoSwitch(
            value: switchStateTwo,
            onChanged: (bool value) {
              setState(() {
                switchStateTwo = value;
              });
            },
            activeColor: Color.fromRGBO(250, 42, 0, 1),
          ),
        ),
      ],
    );
  }

  Widget _buildCupertinoThree() {
    return Row(
      children: <Widget>[
        Text(
          "Show  Trips          ",
          style: TextStyle(
              color: Color.fromRGBO(92, 105, 121, 1),
              fontFamily: "RobotoSlab-Bold",
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: CupertinoSwitch(
            value: switchStateTwo,
            onChanged: (bool value) {
              setState(() {
                switchStateTwo = value;
              });
            },
            activeColor: Color.fromRGBO(250, 42, 0, 1),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              FontAwesomeIcons.home,
              size: 20,
              color: Color.fromRGBO(92, 105, 121, 1),
            ),
            title: Container(
              padding: EdgeInsets.only(top: 5),
              width: 35,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: Color.fromRGBO(250, 42, 0, 1),
                  ),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              FontAwesomeIcons.image,
              size: 20,
              color: Color.fromRGBO(92, 105, 121, 1),
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.mapMarkerAlt,
              size: 20,
              color: Color.fromRGBO(92, 105, 121, 1),
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bell,
              size: 20,
              color: Color.fromRGBO(92, 105, 121, 1),
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 25,
              color: Color.fromRGBO(92, 105, 121, 1),
            ),
            title: Text(""),
          ),
        ],
      ),
      body: Column(
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
              Positioned(
                top: 50,
                child: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: Colors.white,
                    size: 19,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                left: 160,
                top: 70,
                child: Text(
                  "Edit profile",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 16,
                    fontFamily: "RobotoSlab-Bold",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 70,
                left: 225,
                child: Container(
                  width: 29,
                  height: 29,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(134, 184, 177, 1),
                  ),
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.camera,
                      color: Colors.white,
                      size: 12,
                    ),
                    onPressed: () {
                      print("this is the camera button");
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: _buildName(),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: _buildCity(),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: _buildEmail(),
          ),
          SizedBox(height: 30),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Trips",
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(92, 105, 121, 1),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 500,
            height: 30,
            child: _buildTrips(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 40, top: 30),
                height: 80,
                width: 400,
                child: _buildCupertino(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 40, top: 10),
                height: 80,
                width: 400,
                child: _buildCupertinoTwo(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 40, top: 10),
                height: 80,
                width: 400,
                child: _buildCupertinoThree(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
