import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(menu1());
}

class menu1 extends StatelessWidget {
  // This widget is the root of your application.
  final String name_var = 'Rajat Soni';
  final String mailadd = 'xxxxxxx@gmail.com';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                height: 682.0,
                child: Image.asset(
                  'images/shades.jpg',
                  fit: BoxFit.fill,
                ),
              ), //overall background image
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 40.0, 50.0, 0.0),
                width: 550.0,
                decoration: BoxDecoration(
                  color: Colors.purple[900],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60.0),
                    bottomRight: Radius.circular(60.0),
                  ),
                ),
              ), //menu bar
              Container(
                height: 200.0,
                width: 400.0,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.only(topRight: Radius.circular(60.0)),
                ),
                margin: EdgeInsets.fromLTRB(0.0, 40.0, 50.0, 0.0),
                child: Image.asset(
                  'images/morning-meditation.jpg',
                  fit: BoxFit.fill,
                ),
              ), //Container for image at the back of the image icon
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 60.0, 0, 0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/shades.jpg'),
                  maxRadius: 40.0,
                ),
              ), //Container for Image icon
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 150.0, 0, 0),
                child: Text(
                  '$name_var',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ), //Container for name
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 180.0, 0, 0),
                child: Text(
                  '$mailadd',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 30.0,
                  ),
                ),
              ), //Container for username
              Container(
                margin: EdgeInsets.fromLTRB(20, 260, 0, 0),
                child: IconButton(
                  icon: Icon(Icons.folder),
                  onPressed: () => Navigator.of(context).pushNamed('/wallet1'),
                  iconSize: 30.0,
                  color: Colors.white70,
                ),
              ), //Wallet icon
              Container(
                margin: EdgeInsets.fromLTRB(80.0, 275, 0, 0),
                child: Text(
                  'My Wallet',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ), //Wallet Text
              Container(
                margin: EdgeInsets.fromLTRB(20, 310, 0, 0),
                child: IconButton(
                  icon: Icon(Icons.lock),
                  onPressed: () => Navigator.of(context).pushNamed('/Coupons'),
                  iconSize: 30.0,
                  color: Colors.white70,
                ),
              ), //Offer and Coupons Icon
              Container(
                margin: EdgeInsets.fromLTRB(80.0, 315, 0, 0),
                child: Text(
                  'Offers and \nCoupons',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ), //Offer and Coupons Text
              Container(
                margin: EdgeInsets.fromLTRB(20, 360, 0, 0),
                child: IconButton(
                  icon: Icon(Icons.supervised_user_circle),
                  onPressed: () {},
                  iconSize: 30.0,
                  color: Colors.white70,
                ),
              ), //Invite and Earn Icon
              Container(
                margin: EdgeInsets.fromLTRB(80.0, 365, 0, 0),
                child: Text(
                  'Invite and \nEarn',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ), //Invite and Earn Text
              Container(
                margin: EdgeInsets.fromLTRB(20, 410, 0, 0),
                child: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {},
                  iconSize: 30.0,
                  color: Colors.white70,
                ),
              ), //Contact Us Icon
              Container(
                margin: EdgeInsets.fromLTRB(80.0, 425, 0, 0),
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ), //Contact Us Text
              Container(
                margin: EdgeInsets.fromLTRB(30, 500, 0, 0),
                child: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white70,
                  ),
                ),
              ), //About Us
              Container(
                margin: EdgeInsets.fromLTRB(30, 600, 0, 0),
                child: Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white70,
                  ),
                ),
              ), //Log Out
              Container(
                margin: EdgeInsets.fromLTRB(270, 130, 0, 0),
                child: IconButton(icon: Icon(Icons.list),
                  onPressed: () => Navigator.of(context).pushNamed('/company1'),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
