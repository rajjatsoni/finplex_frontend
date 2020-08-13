import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Setting());
}

class Setting extends StatelessWidget {
  Setting({Key key,
  }) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  height: 10.0,
                ),
                Container(
                  height: 100,
                  color: Colors.deepOrange[900],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 100.0,
                  color: Colors.deepOrange[900],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 100.0,
                  color: Colors.deepOrange[900],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 100.0,
                  color: Colors.deepOrange[900],
                ),
                SizedBox(
                  height: 5,
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
                          onPressed: () => Navigator.of(context).pushNamed('/home1'),),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            icon: Icon(
                              Icons.list,
                              size: 30.0,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.of(context).pushNamed('/company1'),),
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
                            onPressed: () => Navigator.of(context).pushNamed('/settings'),),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 20.0, 0, 0),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {},
                iconSize: 30.0,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(60, 80, 0, 0),
              child: Text(
                'SETTINGS',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(300, 70, 0, 0),
              child: Icon(
                Icons.search,
                size: 40.0,
                color: Colors.white,
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15, 180.0, 0, 0),
                child: IconButton(
                    icon: Icon(
                      Icons.person,
                      size: 80.0,
                      color: Colors.white,
                    ),
                    onPressed: () {})),
            Container(
              margin: EdgeInsets.fromLTRB(130.0, 210, 0, 0),
              child: Text(
                'MY INFO',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15, 285.0, 0, 0),
                child: IconButton(
                    icon: Icon(
                      Icons.insert_drive_file,
                      size: 80.0,
                      color: Colors.white,
                    ),
                    onPressed: () {})),
            Container(
              margin: EdgeInsets.fromLTRB(110.0, 315, 0, 0),
              child: Text(
                'TERMS AND CONDITIONS',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15, 400.0, 0, 0),
                child: IconButton(
                    icon: Icon(
                      Icons.find_in_page,
                      size: 80.0,
                      color: Colors.white,
                    ),
                    onPressed: () {})),
            Container(
              margin: EdgeInsets.fromLTRB(130.0, 425, 0, 0),
              child: Text(
                'HOW TO PLAY',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15, 510.0, 0, 0),
                child: IconButton(
                    icon: Icon(
                      Icons.card_travel,
                      size: 80.0,
                      color: Colors.white,
                    ),
                    onPressed: () {})),
            Container(
              margin: EdgeInsets.fromLTRB(130.0, 535, 0, 0),
              child: Text(
                'JOBS',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(32, 655, 0, 0),
              child: Text(
                'League',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(142, 655, 0, 0),
              child: Text(
                'Team',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(235, 655, 0, 0),
              child: Text(
                'Matchup',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
