import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hoodie_collection/screen/login.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashStart();
  }

  splashStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#8F23d6"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              iconSize: 100.0,
              icon: new Image.asset('assets/images/sweatshirt.png'),
              onPressed: () {},
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              "Hoodie Collections",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(
              "Copyright : Juan Rayhan Hidayah",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
              ),
            ),
            Text(
              "2020",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
