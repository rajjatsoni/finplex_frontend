import 'package:flutter/material.dart';

void main() {
  runApp(onboarding1());
}

class onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(80.0, 360.0 , 0, 0),
              child: Text('WELCOME TO FPL',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 460.0 , 0, 0),
              child: Text('''"IF YOU RISK NOTHING, THEN YOU RISK EVERYTHING"''',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                  fontSize: 15.0,
                ),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.fromLTRB(55.0, 500, 0, 0),
              child: RaisedButton(onPressed: () {},
                color: Colors.orange,
                child: Text('LOG IN',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.fromLTRB(55.0, 550, 0, 0),
              child: RaisedButton(onPressed: () {},
                color: Colors.orange,
                child: Text('SIGN UP',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
