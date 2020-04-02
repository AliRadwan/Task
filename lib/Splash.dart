import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'Home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _loadData();
    super.initState();
  }

  Future<Timer> _loadData() async {
    return new Timer(Duration(seconds: 4), _onDoneLoading);
  }

  _onDoneLoading() async {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
        (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(),
          child: Padding(
              padding: EdgeInsets.only(top: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimationLimiter(
                      child: AnimationConfiguration.synchronized(
                          duration: const Duration(milliseconds: 1000),
                          child: SlideAnimation(
                              delay: Duration(microseconds: 1000),
                              verticalOffset: 800.0,
                              duration: Duration(milliseconds: 2500),
                              child: FlipAnimation(
                                  child: Container(
                                      height: 200,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/logo.png"),
                                              fit: BoxFit.contain)))))))
                ],
              )),
        ),
      ),
    );
  }
}
