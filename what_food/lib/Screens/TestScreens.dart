import 'package:flutter/material.dart';
import 'package:what_food/Services/AuthService.dart';

class Homepage extends StatefulWidget{
  static final String id = 'homepage';
  @override
  State<StatefulWidget> createState() => new _HomePageState(); 
}

class _HomePageState extends State<Homepage>{

//String userid = "5ecebf257ff55f59a84ba0ec";

  _submit() {
      //AuthService.signup_Author('test lan thu 992', '0392525078', 'tesrtthicangigmail@gmail.com', 'anbinh123');
      //AuthService.login_Author('0392525078', 'anbinh123');
      AuthService.profile_Author();
      //AuthService.getUserWithId();
      //AuthService.upDateProfileUser('test lan thu 992', 'anbinh123', 'tesrtthicangigmail@gmail.com','Test Bio','Test Avatar');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        actions: <Widget>[
          RaisedButton(
                        onPressed: _submit,
                        color: Colors.pink,
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Test Button',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30),
                        ),
                      ),
        ],
      ),
    );
 }
}