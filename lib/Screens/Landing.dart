import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int likes = 0;

  Widget _buildLogo() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                        "https://pbs.twimg.com/profile_images/877903823133704194/Mqp1PXU8_400x400.jpg",
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Column(
                  children: <Widget>[
                    Text(
                      "Jennie Dean",
                      style: TextStyle(
                        fontFamily: "RobotoSlab-Bold",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(50, 59, 69, 1),
                      ),
                    ),
                    SizedBox(height: 3),
                    Container(
                      padding: EdgeInsets.only(right: 45),
                      child: Text(
                        "Coorg",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(168, 182, 200, 1),
                          fontFamily: "RobotoSlab-Regular",
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 225),
                  child: IconButton(
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: Color.fromRGBO(50, 59, 69, 1),
                    ),
                    onPressed: () {
                      print("this is the test");
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(5.0),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            alignment: Alignment.bottomCenter,
            width: 370,
            height: 180,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/feed.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.heart,
                        color: Color.fromRGBO(50, 59, 69, 1),
                      ),
                      onPressed: () {
                        setState(() {
                          likes++;
                        });
                      },
                    ),
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.comment,
                          color: Color.fromRGBO(50, 59, 69, 1),
                        ),
                        onPressed: null),
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.paperPlane,
                          color: Color.fromRGBO(50, 59, 69, 1),
                        ),
                        onPressed: null),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 200),
                  child: Text(
                    "10 min",
                    style: TextStyle(
                      color: Color.fromRGBO(168, 182, 200, 1),
                      fontFamily: "RobotoSlab-Regular",
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Divider(
                color: Colors.black26,
                height: 2,
              ),
            ),
            Expanded(
              child: Divider(
                color: Colors.black26,
                height: 2,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildComment() {
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.solidHeart),
                    color: Color.fromRGBO(50, 59, 69, 1),
                    onPressed: () {
                      print("fekrfkernerk");
                    },
                  ),
                  Text(
                    "$likes",
                    style: TextStyle(
                      color: Color.fromRGBO(50, 59, 69, 1),
                      fontSize: 14,
                      fontFamily: "RobotoSlab-Regular",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "Jennie Dean",
                  style: TextStyle(
                    color: Color.fromRGBO(50, 59, 69, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "RobotoSlab-bold",
                  ),
                ),
                TextSpan(
                  text:
                      " One of the best ways to make a great vacation quickly horrible is to choose the wrong accommodations for your trip.",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "RobotoSlab-Regular",
                    color: Color.fromRGBO(92, 105, 121, 1),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Color.fromRGBO(50, 59, 69, 1),
              ),
              onPressed: null,
            ),
            Text(
              "See 14 comments",
              style: TextStyle(
                color: Color.fromRGBO(168, 182, 200, 1),
                fontSize: 14,
                fontFamily: "RobotoSlab-Regular",
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSecondFeed() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10, 0, 0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                        "https://pbs.twimg.com/profile_images/877903823133704194/Mqp1PXU8_400x400.jpg",
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Column(
                  children: <Widget>[
                    Text(
                      "Garrett Gilbert",
                      style: TextStyle(
                        fontFamily: "RobotoSlab-Bold",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(50, 59, 69, 1),
                      ),
                    ),
                    SizedBox(height: 2),
                    Container(
                      padding: EdgeInsets.only(right: 75),
                      child: Text(
                        "Goa",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(168, 182, 200, 1),
                          fontFamily: "RobotoSlab-Regular",
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 225),
                  child: IconButton(
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: Color.fromRGBO(50, 59, 69, 1),
                    ),
                    onPressed: () {
                      print("this is the test");
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(5.0),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            alignment: Alignment.bottomCenter,
            width: 370,
            height: 185,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/secondfeed.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            Text(
              "For You",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Roboto_slab",
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(50, 59, 69, 1),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 250,
              ),
            ),
            Expanded(
              child: Icon(
                Icons.search,
                size: 30,
                color: Color.fromRGBO(50, 59, 69, 1),
              ),
            ),
          ],
        ),
      ),
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
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: _buildLogo(),
          ),
          Container(
            child: _buildComment(),
          ),
          Container(
            child: _buildSecondFeed(),
          ),
        ],
      ),
    );
  }
}
