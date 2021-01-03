import 'package:flutter/material.dart';
import 'package:libraryapp/pages/home_page.dart';
import 'package:libraryapp/pages/login_page.dart';
import 'package:libraryapp/pages/signup_page.dart';
import 'package:libraryapp/pages/splash_screen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(backgroundColor: Colors.green[900]),
    
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      
      '/LoginPage': (BuildContext context) => new LoginPage(),
      '//SignupPage': (BuildContext context) => new SignupPage(),
      '///HomePage':(BuildContext context) => new HomePage(),
    
    },
  ));
}

