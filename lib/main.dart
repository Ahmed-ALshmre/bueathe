import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:splashscreen/splashscreen.dart';
import 'api_test/api.dart';
import 'nav.dart';
import 'nav2.dart';

void main() {
  runApp(new MaterialApp(
    home:  SplashScreen(),
  ));
}


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    displaySplash();
  }

  displaySplash() {
    Timer(Duration(seconds: 7), () async {
        Route route = MaterialPageRoute(builder: (_) => BottomNavigationBarExample());
        Navigator.pushReplacement(context, route);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Color(0xff087C59),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/m2.png')),
            ],
          ),
        ),
      ),
    );
  }
}