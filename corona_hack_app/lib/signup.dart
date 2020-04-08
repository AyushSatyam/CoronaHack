import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 60.0,
      width: 3.0,
      color: Colors.white,
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
              constraints: BoxConstraints.expand(height: 100),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              color: Colors.transparent,
              child: Image.asset(
                "assets/images/googleLoginLogo.png",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    height: 55.0,
                    width: 150.0,
                    color: Colors.transparent,
                    margin: EdgeInsets.only(left: 10),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('User',
                            style: TextStyle(
                                fontSize: 30, color: Colors.orangeAccent)),
                      ),
                    )),
                VerticalDivider(),
                Container(
                    height: 55.0,
                    color: Colors.transparent,
                    margin: EdgeInsets.only(right: 10, left: 10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.0),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text('Volenteer',
                            style: TextStyle(
                                fontSize: 30, color: Colors.orangeAccent)),
                      ),
                    )),
              ],
            ),
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
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              prefixIcon: const Icon(
                                Icons.email,
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
                              labelText: 'Contact',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              prefixIcon: const Icon(
                                Icons.phone,
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
                  SizedBox(height: 20.0),
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
                          child: Text('CREATE!',
                              style: TextStyle(
                                  fontSize: 30, color: Colors.orangeAccent)),
                        ),
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontFamily: 'Monserrat',
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/main');
                  },
                  child: Text(
                    'Sign in!',
                    style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ], //full app
        ), //full app
      ),
    );
  }
}
