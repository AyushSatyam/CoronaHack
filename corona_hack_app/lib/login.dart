/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'signup.dart';

ThemeData buildTheme() {
  final ThemeData base = ThemeData();
  return base.copyWith(
    hintColor: Colors.white,
    primaryColor: Colors.black,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        color: Colors.blue,
      ),
      labelStyle: TextStyle(
        color: Colors.green,
      ),
    ),
  );
}



class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage>{

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Background.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomPadding: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 150),
              //alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/googleLoginLogo.png",
              ),
              padding: EdgeInsets.only(top: 50),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Flexible(
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.white,
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  )),
                              labelText: 'Username',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Flexible(
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.white,
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  )),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(top: 15.0, left: 20.0),
                    child: InkWell(
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                      height: 55.0,
                      color: Colors.transparent,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1.0),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/main');
                          },
                          child: Text('GO!',
                              style: TextStyle(
                                  fontSize: 30, color: Colors.orangeAccent)),
                        ),
                      )),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(38, 5, 10, 0),
                        child: Container(
                            padding: EdgeInsets.only(top: 5.0),
                            height: 2.0,
                            width: 100.0,
                            color: Colors.white),
                      ),
                      Text('or',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 38, 0),
                        child: Container(
                            height: 2.0, width: 100.0, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                  height: 55.0,
                  color: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Center(
                            child: Icon(
                              FontAwesomeIcons.userPlus,
                              color: Colors.white,
                              size: 25.0,
                            ),
                          ),
                          Text(
                            'Create Account',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ), //create account
                ), //last
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    'Sign in with',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.linkedinIn,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
          ], //full app
        ), //full app
      ),
    );
  }
}
*/
