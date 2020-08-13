import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(wallet1());
}

class wallet1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange[900],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  height: 160,
                ),
                SizedBox(
                  height: 445,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5.0, 0, 0, 150.0),
                  height: 78.4,
                  color: Colors.black,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            icon: Icon(
                              Icons.security,
                              size: 30.0,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            icon: Icon(
                              Icons.list,
                              size: 30.0,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            icon: Icon(
                              Icons.supervised_user_circle,
                              size: 30.0,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            icon: Icon(
                              Icons.settings,
                              size: 30.0,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 30.0, 0, 0),
              child: IconButton(
                icon: Icon(Icons.list),
                onPressed: () {},
                iconSize: 40.0,
                color: Colors.white,
              ),
            ),//top list button
            Container(
              margin: EdgeInsets.fromLTRB(150, 80, 0, 0),
              child: Text(
                'Add Cash',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),//Add Cash Text
            Container(
              margin: EdgeInsets.fromLTRB(32, 655, 0, 0),
              child: Text(
                'League',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),//League Text
            Container(
              margin: EdgeInsets.fromLTRB(142, 655, 0, 0),
              child: Text(
                'Team',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),//Team Text
            Container(
              margin: EdgeInsets.fromLTRB(235, 655, 0, 0),
              child: Text(
                'Matchup',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),//Match Up Text
            Container(
              margin: EdgeInsets.fromLTRB(332, 655, 0, 0),
              child: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            MyApp2(),//Settings
          ],
        ),
      ),
    );
  }
}

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  double balance = 2510.0;
  double amount1 = 2000; double amount2 = 100; double amount3 = 200;double amount4 = 500;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 60.0,
          margin: EdgeInsets.fromLTRB(30.0, 200.0, 0, 0),
          child: RaisedButton(onPressed: () {},
            color: Colors.white,
            child: Text('Current Balance  Rs $balance',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
          ),
        ),//Current Balance Bar
        Container(
          margin: EdgeInsets.fromLTRB(110.0, 270, 0, 0),
          child: Text('Add Cash to your wallet',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),//Add cash...Text
        Container(
          margin: EdgeInsets.fromLTRB(30, 320, 0, 0),
          child: Text('Amount to add',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          width: 390,
          height: 35.0,
          margin: EdgeInsets.fromLTRB(10.0, 350.0, 0, 10),
          child: RaisedButton(onPressed: () {},

            color: Colors.white,
            child: Text('Rs $amount1',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ),// 2000 amount addition
        Container(
          margin: EdgeInsets.fromLTRB(10, 410, 0, 0),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: RaisedButton(onPressed: () {},
                  color: Colors.white,
                  child: Text('Rs $amount2',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                flex: 1,
                child: RaisedButton(onPressed: () {},
                  color: Colors.white,
                  child: Text('Rs $amount3',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                flex: 1,
                child: RaisedButton(onPressed: () {},
                  color: Colors.white,
                  child: Text('Rs $amount4',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),//Amounts that we can add
        Container(
          height: 60.0,
          width: 370.0,
          margin: EdgeInsets.fromLTRB(20.0, 500.0, 0, 0),
          child: RaisedButton(onPressed: () {},
            color: Colors.lightGreen[700],
            child: Text('ADD CASH',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
          ),
        ), //Add Cash Button
      ],
    );
  }
}

