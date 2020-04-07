import 'package:flutter/material.dart';
import 'dart:async';
import 'package:project/pages/homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startSplashTimer(){
    var _duration = new Duration(seconds: 8);
    return new Timer(_duration, navigateToHome);
  }

  navigateToHome(){
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context)=>HomePage())
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    startSplashTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight= MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(children: <Widget>[
          SizedBox(height: deviceHeight*0.225,),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/news.jpg"),
              ),
            ),
          ),
          SizedBox(height: deviceHeight*0.2,),
          Text("Update Me, News that matters",
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          )
        ],)
      ),
    );
  }
}