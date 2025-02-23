import 'package:flutter/material.dart';

import 'pages/login-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeatherFlut',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(fontFamily: 'Gilroy'),
    );
  }
}