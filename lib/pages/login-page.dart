import './profile-page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img/background.png"),
                    fit: BoxFit.none,
                  ),
                ),
                width: double.infinity,
                height: 320,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 70),
                        child: Image.asset("assets/img/icon-home.png"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Welcome to',
                      style: TextStyle(fontSize: 20, color: Color(0xFF22215B)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Dirbbox',
                      style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF22215B)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Best cloud storage platform for all\n'
                      'business and individuals to\n manage there data\n\n\n'
                      'Join For Free.',
                      style: TextStyle(fontSize: 14, color: Color(0xFF7B7F9E)),
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    btnSmartId(),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF567DF4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        height: 50.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Sign in',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF)),
                                ),
                                SizedBox(width: 10),
                                Image.asset('assets/img/vector.png'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 51),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Use Social Login",
                        style:
                            TextStyle(fontSize: 12, color: Color(0XFF1B1D28)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 34),
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset('assets/img/instagram.png'),
                            Image.asset('assets/img/twitter.png'),
                            Image.asset('assets/img/facebook.png'),
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: 52, bottom: 34),
                child: Text(
                  "Create an account",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0XFF1B1D28),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

Widget btnSmartId(){
  return GestureDetector(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(86, 125, 244, 0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      height: 50.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/img/huella.png'),
              SizedBox(width: 10),
              Text(
                'Smart Id',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF567DF4)),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

