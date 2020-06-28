import 'package:flutter/material.dart';
import 'package:what_food/Screens/Login/login_screen.dart';
import 'package:what_food/Screens/Profile/profile_screen.dart';
import 'package:what_food/Screens/Welcome/welcome_screen.dart';
import 'package:what_food/test123.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        /*LoginPage.id: (context) => LoginPage(),
        SignupPage.id: (context) => SignupPage(),
        Homepage.id: (context) => Homepage(),
        Profile.id: (context) => Profile(),*/
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
