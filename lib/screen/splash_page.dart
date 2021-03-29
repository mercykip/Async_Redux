import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registration_async/utils/colors.dart';

import 'signup/sign_up.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUp()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [orangeColors, orangeLightColors],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter),
          ),
          child: Center(
            child: Image.asset("assets/images/logo.png"),
          )),
    );
  }
}
