import 'package:flutter/material.dart';
import 'Screens/Login.dart';
// import 'Screens/Search.dart';
// import 'Screens/Profile.dart';
// import 'Screens/Landing.dart';
// import 'Screens/Landingtwo.dart';
// import 'Screens/Explore.dart';
// import 'Screens/City.dart';
// import 'Screens/Ediburgh.dart';
// import 'Screens/ScreenTwelve.dart';
// import 'Screens/Gallery.dart';
// import 'Screens/Slider.dart';
// import 'Screens/EditProfile.dart';
// import 'Screens/Activity.dart';
import 'Screens/RoughLogin.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginDesign(),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF73B540),
                  Color(0xFF73B400),
                  Color(0xFF77B400),
                  Color(0xFF77A400),
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset("assets/logo.png"),
          ),
        ],
      ),
    );
  }
}
