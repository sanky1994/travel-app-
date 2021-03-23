import 'package:flutter/material.dart';
import 'package:travelapp/Screens/Login.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  Widget _signUpText() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 20),
      child: Text(
        "Sign Up",
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _loginRedirect() {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 10),
      alignment: Alignment.centerRight,
      child: FlatButton(
        textColor: Color.fromRGBO(136, 196, 37, 1),
        child: Text(
          'Login',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
          );
          print("this is the navigation to the signup screen");
        },
      ),
    );
  }

  Widget _createAccount() {
    return Container(
      padding: EdgeInsets.only(left: 10),
      width: 380,
      child: RaisedButton(
        elevation: 5.0,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(5),
          side: BorderSide(
            color: Color.fromRGBO(136, 196, 37, 0.37),
          ),
        ),
        color: Color.fromRGBO(136, 196, 37, 1),
        textColor: Colors.white,
        padding: EdgeInsets.all(15.0),
        onPressed: _submit,
        child: Text(
          "Create Account",
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
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
          SizedBox(height: 27),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: _signUpText(),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(160, 20, 0, 0),
                  child: _loginRedirect(),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
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
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Roboto_slab",
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20.0,
                          horizontal: 10.0,
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color.fromRGBO(17, 17, 17, .4),
                        ),
                        hintText: "Username",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(103, 103, 103, 0.24),
                            width: 0.1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Material(
                    elevation: 15.0,
                    shadowColor: Color.fromRGBO(103, 103, 103, 0.24),
                    child: TextFormField(
                      validator: (val) =>
                          val.length < 8 ? 'password too short' : null,
                      onSaved: (val) => _password = val,
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Roboto_slab",
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
                  SizedBox(height: 20.0),
                  Material(
                    elevation: 15.0,
                    shadowColor: Color.fromRGBO(103, 103, 103, 0.24),
                    child: TextFormField(
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Roboto_slab",
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
                        hintText: " Re-type Password",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(103, 103, 103, 0.24),
                            width: 0.1,
                          ),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Material(
                    elevation: 15.0,
                    shadowColor: Color.fromRGBO(103, 103, 103, 0.24),
                    child: TextFormField(
                      validator: (val) =>
                          !val.contains("@") ? 'Invalid Email' : null,
                      onSaved: (val) => _email = val,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Roboto_slab",
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Color.fromRGBO(17, 17, 17, .4),
                        ),
                        hintText: "Email",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(103, 103, 103, 0.24),
                            width: 0.1,
                          ),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 70),
          Container(
            child: _createAccount(),
          ),
        ],
      ),
    );
  }
}

// this is the code that was written before the validation was applied

// Widget _buildUsername() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         SizedBox(
//           height: 20.0,
//         ),
//         Container(
//           alignment: Alignment.centerLeft,
//           height: 40.0,
//           child: TextField(
//             keyboardType: TextInputType.emailAddress,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20.0,
//             ),
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               contentPadding: EdgeInsets.only(top: 20.0),
//               prefixIcon: Icon(Icons.lock, color: Colors.black12),
//               hintText: "Username",
//               focusedErrorBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.black),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildPassword() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         SizedBox(
//           height: 20.0,
//         ),
//         Container(
//           alignment: Alignment.centerLeft,
//           height: 40.0,
//           child: TextField(
//             keyboardType: TextInputType.visiblePassword,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20.0,
//             ),
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               contentPadding: EdgeInsets.only(top: 10.0),
//               prefixIcon: Icon(Icons.lock, color: Colors.black12),
//               hintText: "Password",
//               focusedErrorBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.black),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildRePassword() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         SizedBox(
//           height: 20.0,
//         ),
//         Container(
//           alignment: Alignment.centerLeft,
//           height: 40.0,
//           child: TextField(
//             keyboardType: TextInputType.visiblePassword,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20.0,
//             ),
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               contentPadding: EdgeInsets.only(top: 10.0),
//               prefixIcon: Icon(Icons.lock, color: Colors.black12),
//               hintText: "Re-Type Password",
//               focusedErrorBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.black),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildEmail() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         SizedBox(
//           height: 20.0,
//         ),
//         Container(
//           alignment: Alignment.centerLeft,
//           height: 40.0,
//           child: TextField(
//             keyboardType: TextInputType.emailAddress,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20.0,
//             ),
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               contentPadding: EdgeInsets.only(top: 20.0),
//               prefixIcon: Icon(Icons.mail, color: Colors.black12),
//               hintText: "E-Mail",
//               focusedErrorBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.black),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
