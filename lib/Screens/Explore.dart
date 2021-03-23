import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  Widget _buildFeaturedVinece() {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 125,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/Vinece.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 110, left: 30),
          child: Text(
            "Vinece",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMoscowFeature() {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 120,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/Moscow.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 100, left: 30),
          child: Text(
            "Moscow",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSanFrancisco() {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 150,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/san.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              // top: 0.0,
              bottom: 0.0,
              child: Container(
                height: 190,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/san.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "San Francisco",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSydney() {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 170,
              width: 100,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/sydney.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              child: Container(
                height: 120,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/sydney.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "Sydney",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNewYork() {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 170,
              width: 100,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/newYork.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              child: Container(
                height: 120,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/newYork.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "New York",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWarsaw() {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 190,
              width: 100,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/warsaw.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              child: Container(
                height: 120,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/warsaw.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "Warsaw",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRome() {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 170,
              width: 100,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/rome.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              child: Container(
                height: 120,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/rome.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "Rome",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrague() {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 170,
              width: 100,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/prague.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              child: Container(
                height: 120,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/prague.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "Prague",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            Text(
              "Explore",
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
            title: Text("data"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              FontAwesomeIcons.image,
              size: 20,
              color: Color.fromRGBO(92, 105, 121, 1),
            ),
            title: Text("data"),
            // title: Container(
            //   decoration: BoxDecoration(
            //     border: Border(
            //       left: BorderSide(
            //         color: Color.fromRGBO(250, 42, 0, 1),
            //         width: 1,
            //       ),
            //     ),
            //   ),
            // ),
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
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10, left: 15),
            alignment: Alignment.topLeft,
            child: Text(
              "Recomended",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "RobotoSlab-Bold",
                color: Color.fromRGBO(50, 59, 69, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildSanFrancisco(),
                SizedBox(width: 20),
                _buildSydney(),
                SizedBox(width: 20),
                _buildNewYork(),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "In Europe",
              style: TextStyle(
                fontFamily: "RobotoSlab-Bold",
                fontSize: 18,
                color: Color.fromRGBO(50, 59, 69, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          // Container(
          //   height: 150,
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     children: <Widget>[
          //       _buildWarsaw(),
          //       SizedBox(width: 20),
          //       _buildRome(),
          //       SizedBox(width: 20),
          //       _buildPrague(),
          //     ],
          //   ),
          // ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 30, left: 20),
            child: Text(
              "Featured",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "RobotoSlab-Bold",
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(50, 59, 69, 1),
              ),
            ),
          ),
          Container(
            child: _buildFeaturedVinece(),
          ),
          Container(
            child: _buildMoscowFeature(),
          ),
        ],
      ),
    );
  }
}
