
import 'dart:async';

import 'package:flutter/material.dart';

//import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }
@override
void initState() {
  super.initState();
  startTime();
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(decoration: BoxDecoration(
        //color: Colors.transparent,
        image: DecorationImage(image: AssetImage("assets/images/splash.jpeg"),
      fit: BoxFit.fill,
      )),

      ),
    );
  }
  navigationPage(){
    Navigator.of(context).pushReplacementNamed('/LoginPage');
  }
}