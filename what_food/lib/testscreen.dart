import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:what_food/Services/AuthService.dart';
import 'Models/UserModel.dart';

class TestApp extends StatefulWidget {
  TestApp({Key key}) : super(key: key);

  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  Future<User> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = AuthService.profile_Author();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Center(
          child: FutureBuilder<User>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Colors.grey,
                            backgroundImage: snapshot.data.avatar.isEmpty
                                ? AssetImage('assets/images/Avatardefault.jpg')
                                : CachedNetworkImageProvider(
                                    snapshot.data.avatar),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            snapshot.data.name,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Divider(),
                        ],
                      ),
                    ),
                  ],
                );
                //return Text(snapshot.data.name);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
