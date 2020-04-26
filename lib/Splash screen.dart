import 'dart:async';

import 'package:flutter/material.dart';

import 'WelcomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  //State=>

  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 2), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  //Design=>
  Widget build(BuildContext context) {
    return Container(
        color: Color(0XFF496075),
        child: Center(
          child: Image.asset('assets/logo.png'),
        ));
  }
}
