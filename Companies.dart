import 'package:flutter/material.dart';

void main() {
  runApp(Company1());
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

class Company1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.deepOrange[900],
              height: 110.0,
              padding: EdgeInsets.fromLTRB(80.0, 70.0,50.0, 0),
              child: Text('FINANCE PREMIER LEAGUE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(80.0, 5.0, 10.0, 10.0),
                  height: 50.0,
                  width: 135.0,
                  color: Colors.deepOrange[900],
                  child: Text('12-4-0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,

                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  color: Colors.deepOrange[900],
                  child: Text(' | ',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                  height: 50.0,
                  color: Colors.deepOrange[900],
                  child: Text('2ND PLACE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  color: Colors.deepOrange[900],
                  child: Text(' | ',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 80.0, 10.0),
                  height: 50.0,
                  width: 135.0,
                  color: Colors.deepOrange[900],
                  child: Text('12-4-0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 150.0,
                      child: RaisedButton(onPressed: () {},
                        color: Colors.deepOrange[900],
                        child: Text('GAINERS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 150.0,
                      child: RaisedButton(onPressed: () {},
                        color: Colors.deepOrange[900],

                        child: Text('LOSERS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(child: Container(
                    child: MyStatefulWidget())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 300.0,
                      child: RaisedButton(onPressed: () {},
                        color: Colors.deepOrange[900],
                        child: Text('VIEW COMPANY POINT DISTRIBUTION',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
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
              height: 40.0,
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: IconButton(icon: Icon(Icons.local_play),
                      iconSize: 50.0,
                    onPressed: () => Navigator.of(context).pushNamed('/home1'),),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(icon: Icon(Icons.list),
                      iconSize: 50.0,
                      onPressed: () => Navigator.of(context).pushNamed('/company1')),
                ),
                Expanded(flex: 1, child: IconButton(icon: Icon(Icons.apps),
                    iconSize: 50.0,
                    onPressed: () {})),
                Expanded(flex: 1,
                  child: IconButton(icon: Icon(Icons.settings),
                      iconSize: 50.0,
                    onPressed: () => Navigator.of(context).pushNamed('/settings'),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropDownValue = 'SORT: THIS WEEK';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DropdownButton<String>(
        value: dropDownValue,
        icon: Icon(Icons.expand_more),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),

        onChanged: (String newValue) {
          setState(() {
            dropDownValue = newValue;
          });
        },
        items: <String>['SORT: THIS WEEK', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        },).toList(),
      ),
    );
  }
}