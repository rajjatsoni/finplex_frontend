import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_main/Setting.dart';

void main() {
  runApp(Home1());
}

class CompanyBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          CircleAvatar(
            maxRadius: 30.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text('Montreal \n LEAGUE 1'),
          IconButton(
            icon: Icon(Icons.add_circle),
            iconSize: 30.0,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class Home1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(90.0, 40.0, 0.0, 0.0),
              height: 80.0,
              color: Colors.black,
              child: Text(
                "FINANCE PREMIER LEAGUE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: 80.0,
              color: Colors.black,
              padding: EdgeInsets.fromLTRB(110.0, 30.0, 0.0, 0.0),
              child: Text(
                'UPCOMING',
                style: TextStyle(color: Colors.white, fontSize: 35.0),
              ),
            ),
            Container(
              height: 80.0,
              color: Colors.black,
              padding: EdgeInsets.fromLTRB(130.0, 0.0, 0.0, 0.0),
              child: Text(
                'LEAGUES',
                style: TextStyle(color: Colors.white, fontSize: 35.0),
              ),
            ),
            Container(
              height: 40.0,
              color: Colors.black,
              padding: EdgeInsets.fromLTRB(160.0, 10.0, 0.0, 0.0),
              child: Text(
                'CONTESTS',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.deepOrange[900],
                ),
              ),
            ),
            Container(
              height: 5.0,
              color: Colors.deepOrange[900],
            ),
            CompanyBar(),
            SizedBox(
              height: 20.0,
            ),
            CompanyBar(),
            SizedBox(
              height: 20.0,
            ),
            CompanyBar(),
            SizedBox(
              height: 20.0,
            ),
            CompanyBar(),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(Icons.attach_money),
                    iconSize: 55.0,
                    disabledColor: Colors.black,
                    tooltip: 'Increase volume by 10',
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(Icons.list),
                    disabledColor: Colors.black,
                    iconSize: 55.0,
                    tooltip: 'Increase volume by 10',
                    onPressed: () => Navigator.of(context).pushNamed('/company1'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(Icons.web),
                    disabledColor: Colors.black,
                    iconSize: 55.0,
                    tooltip: 'Increase volume by 10',
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      icon: Icon(Icons.settings),
                      disabledColor: Colors.black,
                      iconSize: 55.0,
                      onPressed: () => Navigator.of(context).pushNamed('/settings')

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//class ContestClass extends StatefulWidget {
//  @override
//  _ContestClassState createState() => _ContestClassState();
//}

//class _ContestClassState extends State<ContestClass> {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: ListView(
//        scrollDirection: Axis.vertical,
//        children: <Widget>[
//          CompanyBar(),
//          CompanyBar(),
//        ],
//      ),
//    );
//  }
//}
