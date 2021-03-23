import 'package:flutter/material.dart';

class Sliderpage extends StatefulWidget {
  @override
  _SliderpageState createState() => _SliderpageState();
}

class _SliderpageState extends State<Sliderpage> {
  static double _lowerValue = 0.0;
  static double _upperValue = 100.0;
  RangeValues values = RangeValues(_lowerValue, _upperValue);

  Widget _buildSlider() {
    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 5,
      ),
      child: RangeSlider(
        activeColor: Color.fromRGBO(250, 42, 0, 1),
        inactiveColor: Color.fromRGBO(168, 182, 200, 0.3),
        labels: RangeLabels(values.start.toString(), values.end.toString()),
        min: _lowerValue,
        max: _upperValue,
        values: values,
        onChanged: (val) {
          print(val);
          setState(() {
            values = val;
          });
        },
      ),
    );
  }

  Widget _buildContinentButton() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        SizedBox(width: 10),
        FlatButton(
          color: Color.fromRGBO(168, 182, 200, 0.15),
          textColor: Color.fromRGBO(50, 59, 69, 1),
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          splashColor: Colors.blueAccent,
          onPressed: () {},
          child: Text(
            "Europe",
            style: TextStyle(
              fontSize: 14.0,
              color: Color.fromRGBO(50, 59, 69, 1),
            ),
          ),
        ),
        SizedBox(width: 17),
        GestureDetector(
          onTap: () {
            print("kvbkjbf");
          },
          child: Container(
            alignment: Alignment.center,
            height: 20,
            width: 90,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(250, 42, 0, 1),
                width: 3,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            child: Text(
              "Asia",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(50, 59, 69, 1),
              ),
            ),
          ),
        ),
        SizedBox(width: 18),
        FlatButton(
          color: Color.fromRGBO(168, 182, 200, 0.15),
          textColor: Color.fromRGBO(50, 59, 69, 1),
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          splashColor: Colors.blueAccent,
          onPressed: () {},
          child: Text(
            "North America",
            style: TextStyle(
              fontSize: 14.0,
              color: Color.fromRGBO(50, 59, 69, 1),
            ),
          ),
        ),
        SizedBox(width: 18),
        FlatButton(
          color: Color.fromRGBO(168, 182, 200, 0.15),
          textColor: Color.fromRGBO(50, 59, 69, 1),
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          splashColor: Colors.blueAccent,
          onPressed: () {},
          child: Text(
            "South America",
            style: TextStyle(
              fontSize: 14.0,
              color: Color.fromRGBO(50, 59, 69, 1),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFeaturesButton() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            print("kvbkjbf");
          },
          child: Container(
            alignment: Alignment.center,
            height: 20,
            width: 90,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(250, 42, 0, 1),
                width: 3,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            child: Text(
              "Mountain",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(50, 59, 69, 1),
              ),
            ),
          ),
        ),
        SizedBox(width: 17),
        GestureDetector(
          onTap: () {
            print("kvbkjbf");
          },
          child: Container(
            alignment: Alignment.center,
            height: 20,
            width: 90,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(250, 42, 0, 1),
                width: 3,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            child: Text(
              "Sea",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(50, 59, 69, 1),
              ),
            ),
          ),
        ),
        SizedBox(width: 18),
        FlatButton(
          color: Color.fromRGBO(168, 182, 200, 0.15),
          textColor: Color.fromRGBO(50, 59, 69, 1),
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          splashColor: Colors.blueAccent,
          onPressed: () {},
          child: Text(
            "Old Town",
            style: TextStyle(
              fontSize: 14.0,
              color: Color.fromRGBO(50, 59, 69, 1),
            ),
          ),
        ),
        SizedBox(width: 18),
        FlatButton(
          color: Color.fromRGBO(168, 182, 200, 0.15),
          textColor: Color.fromRGBO(50, 59, 69, 1),
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          splashColor: Colors.blueAccent,
          onPressed: () {},
          child: Text(
            "Monuments",
            style: TextStyle(
              fontSize: 14.0,
              color: Color.fromRGBO(50, 59, 69, 1),
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
              child: IconButton(
                icon: Icon(Icons.tune),
                color: Color.fromRGBO(50, 59, 69, 1),
                onPressed: () {
                  print("fwwfe");
                },
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(15, 15, 0, 20),
            child: Text(
              "Continent",
              style: TextStyle(
                  color: Color.fromRGBO(50, 59, 69, 1),
                  fontSize: 14,
                  fontFamily: "RobotoSlab-Bold",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 500,
            height: 40,
            child: _buildContinentButton(),
          ),
          SizedBox(height: 30),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(15, 15, 0, 20),
            child: Text(
              "Features",
              style: TextStyle(
                  color: Color.fromRGBO(50, 59, 69, 1),
                  fontSize: 14,
                  fontFamily: "RobotoSlab-Bold",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 500,
            height: 40,
            child: _buildFeaturesButton(),
          ),
          SizedBox(height: 30),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(15, 15, 0, 20),
            child: Text(
              "Distance",
              style: TextStyle(
                  color: Color.fromRGBO(50, 59, 69, 1),
                  fontSize: 14,
                  fontFamily: "RobotoSlab-Bold",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "0km",
                  style: TextStyle(color: Color.fromRGBO(168, 182, 200, 1)),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 300),
                child: Text(
                  "10000km",
                  style: TextStyle(color: Color.fromRGBO(168, 182, 200, 1)),
                ),
              ),
            ],
          ),
          Container(
            child: _buildSlider(),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Distance Range :",
                    style: TextStyle(
                      color: Color.fromRGBO(50, 59, 69, 1),
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      fontFamily: "RobotoSlab-bold",
                    ),
                  ),
                  TextSpan(
                    text: " 1,000km - 7,500km",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      fontFamily: "RobotoSlab-Regular",
                      color: Color.fromRGBO(50, 59, 69, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 180),
          Container(
            width: 380,
            child: RaisedButton(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10),
                side: BorderSide(
                  color: Color.fromRGBO(250, 42, 0, 1),
                ),
              ),
              color: Color.fromRGBO(250, 42, 0, 1),
              textColor: Color.fromRGBO(255, 255, 255, 1),
              padding: EdgeInsets.all(15.0),
              onPressed: () {},
              child: Text(
                "Filters",
                style: TextStyle(
                  fontFamily: "Roboto_slab",
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            alignment: Alignment.center,
            child: Text(
              "Clear filters",
              style: TextStyle(
                  color: Color.fromRGBO(50, 59, 69, 1),
                  fontSize: 16,
                  fontFamily: "RobotoSlab-Bold",
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
