import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_main/Companies.dart';
import 'package:flutter_app_main/Coupons.dart';
import 'package:flutter_app_main/Setting.dart';
import 'package:flutter_app_main/home1.dart';
import 'package:flutter_app_main/menu1.dart';
import 'package:flutter_app_main/onboarding1.dart';
import 'package:flutter_app_main/wallet1.dart';

void main() {
  runApp(Home());
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

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/menu1',
      routes: {
        '/menu1': (BuildContext context) => new menu1(),
        '/Coupons': (BuildContext context) => new Coupons(),
        '/onboarding1': (BuildContext context) => new onboarding1(),
        '/wallet1': (BuildContext context) => new wallet1(),
        '/settings': (BuildContext context) => new Setting(),
        '/home1': (BuildContext context) => new Home1(),
        '/company1' : (BuildContext context) => new Company1(),
      },
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
