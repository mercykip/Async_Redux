import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.green,
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Text(
            'Async Redux',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontFamily: "Caveat",
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.blue,
                  offset: Offset(5.0, 5.0),
                ),
              ],
            ),
          ),
        ]))));
  }
}
