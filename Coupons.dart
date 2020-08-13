import 'package:flutter/material.dart';
void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Coupons(),
      )
  );
}

class Coupons extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(


        appBar: PreferredSize(
          preferredSize: Size.fromHeight(140.0),
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text('Finplex'),
            backgroundColor: Color(0xff800000),

            actions: <Widget>[
              Align(
                  alignment:Alignment.topLeft ,
                  child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white), onPressed: (){} ,
                  )


              ),
            ],


          ),

        ),

        body: Column(


            children: <Widget>[

              new Padding(padding: const EdgeInsets.all(10.0),
                child: new Text('Have a Coupon Code ?',

                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,

                  ),
                ),
              ),


              Container(
                width:200,
                child: TextField(
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    hintText: 'AS3CDFG',
                  ),
                ),

              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: FlatButton(
                    child: Text('Apply'),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {},
                  )
              ),

              Container(
                child: Text('Active Coupons-',style: TextStyle(fontSize:20),),


              ),

              new Padding(padding: const EdgeInsets.all(10.0),

                child: Text('you do not have anyy active Coupons at this moment.'),
              )

            ]

        ),
      ),
    );
  }
}