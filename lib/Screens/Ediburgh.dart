import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Edinburghpage extends StatefulWidget {
  @override
  _EdinburghpageState createState() => _EdinburghpageState();
}

class _EdinburghpageState extends State<Edinburghpage> {
  Widget _buildSocial() {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/one.jpeg'),
        ),
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/two.jpeg'),
        ),
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/three.jpeg'),
        ),
        SizedBox(width: 10),
        Column(
          children: <Widget>[
            Text(
              "Janet, Maria, Anna",
              style: TextStyle(
                color: Color.fromRGBO(50, 59, 69, 1),
                fontSize: 14,
                fontFamily: " Roboto_slab",
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "and 15 people like this",
              style: TextStyle(
                color: Color.fromRGBO(92, 105, 121, 1),
                fontSize: 12,
                fontFamily: " Roboto_slab",
              ),
            ),
          ],
        ),
        SizedBox(width: 80),
        IconButton(
          icon: Icon(FontAwesomeIcons.heart),
          onPressed: () {
            print("this is the like button");
          },
        )
      ],
    );
  }

  Widget _buildFeaturedSpot() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 140,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("assets/Zoo.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRating() {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(Icons.star, size: 12, color: Color.fromRGBO(240, 201, 9, 1)),
          Icon(Icons.star, size: 12, color: Color.fromRGBO(240, 201, 9, 1)),
          Icon(Icons.star, size: 12, color: Color.fromRGBO(240, 201, 9, 1)),
          Icon(Icons.star, size: 12, color: Color.fromRGBO(240, 201, 9, 1)),
          Icon(Icons.star, size: 12, color: Color.fromRGBO(171, 188, 207, 1)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Container(
              padding: EdgeInsets.only(right: 330),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  print("object");
                },
              ),
            ),
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 150),
                    child: Text("Edinburgh"),
                  ),
                ],
              ),
              background: Image.asset(
                "assets/Edinburgh.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "Edinburgh is Scotland's compact, hilly capital. It\n has a medieval Old Town and elegant Georgian\n New Town with gardens and neoclassical\n buildings. Looming over the city is Edinburgh\nCastle, home to Scotland’s crown jewels and the \nStone of Destiny, used in the coronation of\n Scottish rulers.",
                    style: TextStyle(
                      color: Color.fromRGBO(92, 105, 121, 1),
                      fontSize: 14,
                      fontFamily: " Roboto_slab",
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Photos",
                    style: TextStyle(
                      color: Color.fromRGBO(50, 59, 69, 1),
                      fontSize: 18,
                      fontFamily: " Roboto_slab",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Reviews",
                    style: TextStyle(
                      color: Color.fromRGBO(50, 59, 69, 1),
                      fontSize: 18,
                      fontFamily: " Roboto_slab",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: _buildRating(),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 200),
                        child: Text(
                          "Add a review",
                          style: TextStyle(
                            color: Color.fromRGBO(92, 105, 121, 1),
                            fontSize: 12,
                            fontFamily: "Roboto_slab",
                          ),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                            color: Color.fromRGBO(92, 105, 121, 1),
                          ),
                          onPressed: () {
                            print("navigate to the next page");
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Social",
                    style: TextStyle(
                      color: Color.fromRGBO(50, 59, 69, 1),
                      fontSize: 18,
                      fontFamily: " Roboto_slab",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 0),
                  child: _buildSocial(),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Featured spots",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(50, 59, 69, 1),
                      fontFamily: " Roboto_slab",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  child: _buildFeaturedSpot(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
