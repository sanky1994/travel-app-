// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  int photoindex = 0;

  final List _images = [
    "assets/Vinece.jpeg",
    "assets/san.jpeg",
  ];
  // Widget _buildImageCarousel() {
  //   return CarouselSlider(
  //     CarouselOptions(height: 400.0),
  //     items: _images.map((i) {
  //       return Builder(builder: (BuildContext context) {
  //         return Container(
  //           width: MediaQuery.of(context).size.width,
  //           decoration: BoxDecoration(image: i),
  //         );
  //       });
  //     }).toList(),
  //   );
  // }
  Widget _buildFirstRow() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/one.jpeg'),
            ),
          ),
          SizedBox(width: 15),
          Container(
            padding: EdgeInsets.only(bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Cecilia McGee",
                    style: TextStyle(
                      color: Color.fromRGBO(50, 59, 69, 1),
                      fontFamily: "Roboto_slab",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "liked 4 your photos",
                    style: TextStyle(
                      color: Color.fromRGBO(92, 105, 121, 1),
                      fontSize: 14,
                      fontFamily: "Roboto_slab",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 90, bottom: 60),
            child: Text(
              "10min ago",
              style: TextStyle(
                color: Color.fromRGBO(168, 182, 200, 1),
                fontSize: 12,
                fontFamily: "Roboto_slab",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSecondFeed() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/two.jpeg'),
            ),
          ),
          SizedBox(width: 15),
          Container(
            padding: EdgeInsets.only(bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "Jennie Dean",
                    style: TextStyle(
                      color: Color.fromRGBO(50, 59, 69, 1),
                      fontFamily: "Roboto_slab",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "started following you",
                    style: TextStyle(
                      color: Color.fromRGBO(92, 105, 121, 1),
                      fontSize: 14,
                      fontFamily: "Roboto_slab",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 95, bottom: 50),
            child: Text(
              "1h ago",
              style: TextStyle(
                color: Color.fromRGBO(168, 182, 200, 1),
                fontSize: 12,
                fontFamily: "Roboto_slab",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThirdFeed() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/three.jpeg'),
            ),
          ),
          SizedBox(width: 15),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "Isaiah Bryan",
                    style: TextStyle(
                      color: Color.fromRGBO(50, 59, 69, 1),
                      fontFamily: "Roboto_slab",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "leave you a comment:",
                    style: TextStyle(
                      color: Color.fromRGBO(92, 105, 121, 1),
                      fontSize: 14,
                      fontFamily: "Roboto_slab",
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Text(
                    "So you’re going abroad,\n you’ve chosen your \n destination and you\n have to choose a hotel.",
                    style: TextStyle(
                      color: Color.fromRGBO(50, 59, 69, 1),
                      fontSize: 14,
                      fontFamily: "Roboto_slab",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 80, bottom: 70),
            child: Text(
              "1h ago",
              style: TextStyle(
                color: Color.fromRGBO(168, 182, 200, 1),
                fontSize: 12,
                fontFamily: "Roboto_slab",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFourFeed() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/four.jpeg'),
            ),
          ),
          SizedBox(width: 15),
          Container(
            padding: EdgeInsets.only(bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "Jennie Dean",
                    style: TextStyle(
                      color: Color.fromRGBO(50, 59, 69, 1),
                      fontFamily: "Roboto_slab",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "started following you",
                    style: TextStyle(
                      color: Color.fromRGBO(92, 105, 121, 1),
                      fontSize: 14,
                      fontFamily: "Roboto_slab",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 90, bottom: 60),
            child: Text(
              "1h ago",
              style: TextStyle(
                color: Color.fromRGBO(168, 182, 200, 1),
                fontSize: 12,
                fontFamily: "Roboto_slab",
              ),
            ),
          ),
        ],
      ),
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
            title: Text("data"),
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
            title: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 20,
                    color: Color.fromRGBO(250, 42, 0, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            title: Container(
              child: Text(
                "Activity",
                style: TextStyle(
                    color: Color.fromRGBO(50, 59, 69, 1),
                    fontSize: 16,
                    fontFamily: " Roboto_slab",
                    fontWeight: FontWeight.w700),
              ),
            ),
            pinned: false,
            expandedHeight: 130.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      print("bfurw");
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      width: 120,
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "You",
                        style: TextStyle(
                          color: Color.fromRGBO(50, 59, 69, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: " Roboto_slab",
                        ),
                      ),
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
                  GestureDetector(
                    onTap: () {
                      print("fbrwf");
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      width: 120,
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Following",
                        style: TextStyle(
                          color: Color.fromRGBO(168, 182, 200, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                SizedBox(height: 10),
                Container(
                  child: _buildFirstRow(),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 110),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          color: Colors.black26,
                          height: 4,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: _buildSecondFeed(),
                ),
                Container(
                  padding: EdgeInsets.only(left: 110),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          color: Colors.black26,
                          height: 4,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: _buildThirdFeed(),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.only(left: 110),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          color: Colors.black26,
                          height: 4,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: _buildFourFeed(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
