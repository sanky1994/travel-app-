import 'package:flutter/material.dart';
import 'package:travelapp/Screens/Signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  Widget _signUp() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        textColor: Color.fromRGBO(136, 196, 37, 1),
        child: Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Signup()),
          );
          print("this is the navigation to the signup screen");
        },
      ),
    );
  }

  Widget _loginText() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 20),
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  void _submit() {
    final form = _formKey.currentState;

    if (form.validate()) {
      form.save();
    }
  }

  Widget _forgotPassword() {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(top: 15.0, right: 20),
      child: InkWell(
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            color: Color.fromRGBO(17, 17, 17, 1),
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return Container(
      width: 380,
      child: RaisedButton(
        elevation: 5.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10),
          side: BorderSide(
            color: Color.fromRGBO(136, 196, 37, 0.37),
          ),
        ),
        color: Color.fromRGBO(136, 196, 37, 1),
        textColor: Colors.white,
        padding: EdgeInsets.all(15.0),
        onPressed: _submit,
        child: Text(
          "Login",
          style: TextStyle(
            fontFamily: "Roboto_slab",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _continueFacebook() {
    return Container(
      width: 380,
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(5),
          side: BorderSide(color: Colors.white),
        ),
        color: Colors.white,
        padding: EdgeInsets.all(10.0),
        onPressed: () {},
        child: Text(
          "Continue with Facebook ",
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(48, 61, 153, 1),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                child: Image.asset("assets/background.png"),
              ),
              Container(
                child: Image.asset("assets/logo.png"),
              ),
            ],
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: _loginText(),
                ),
                Container(
                  padding: EdgeInsets.only(left: 200, top: 30),
                  child: _signUp(),
                ),
              ],
            ),
          ),
          SizedBox(height: 50.0),
          Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Material(
                    elevation: 15.0,
                    shadowColor: Color.fromRGBO(103, 103, 103, 0.24),
                    child: TextFormField(
                      validator: (val) =>
                          !val.contains("@") ? 'Invalid Email' : null,
                      onSaved: (val) => _email = val,
                      style: TextStyle(
                        fontFamily: "Roboto_slab",
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color.fromRGBO(17, 17, 17, .4),
                        ),
                        labelText: "Username",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(103, 103, 103, 0.24),
                            width: 0.1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Material(
                    elevation: 15.0,
                    shadowColor: Color.fromRGBO(103, 103, 103, 0.24),
                    child: TextFormField(
                      validator: (val) =>
                          val.length < 8 ? 'password too short' : null,
                      onSaved: (val) => _password = val,
                      obscureText: true,
                      style: TextStyle(
                        fontFamily: "Roboto_slab",
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color.fromRGBO(17, 17, 17, .4),
                        ),
                        hintText: "Password",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(103, 103, 103, 0.24),
                            width: 0.1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            child: _forgotPassword(),
          ),
          SizedBox(height: 30),
          Container(
            child: _signInButton(),
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
            padding: EdgeInsets.fromLTRB(20, 20, 30, 40),
            child: _continueFacebook(),
          ),
        ],
      ),
    );
  }
}

// this is the code for the input fields before the validator was used

// Widget _buildUsername() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       SizedBox(
//         height: 20.0,
//       ),
//       Container(
//         alignment: Alignment.centerLeft,
//         height: 40.0,
//         child: TextField(
//           keyboardType: TextInputType.emailAddress,
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 20.0,
//           ),
//           decoration: InputDecoration(
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(5),
//             ),
//             contentPadding: EdgeInsets.only(top: 20.0),
//             prefixIcon: Icon(Icons.person, color: Colors.black87),
//             hintText: "Username",
//             focusedErrorBorder: UnderlineInputBorder(
//               borderSide: BorderSide(color: Colors.black),
//             ),
//           ),
//         ),
//       ),
//     ],
//   );
// }

// Widget _buildPassword() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       SizedBox(
//         height: 20.0,
//       ),
//       Container(
//         alignment: Alignment.centerLeft,
//         height: 40.0,
//         child: TextField(
//           keyboardType: TextInputType.visiblePassword,
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 20.0,
//           ),
//           decoration: InputDecoration(
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(5),
//             ),
//             contentPadding: EdgeInsets.only(top: 10.0),
//             prefixIcon: Icon(Icons.lock, color: Colors.black87),
//             hintText: "Password",
//             focusedErrorBorder: UnderlineInputBorder(
//               borderSide: BorderSide(color: Colors.black),
//             ),
//           ),
//         ),
//       ),
//     ],
//   );
// }
