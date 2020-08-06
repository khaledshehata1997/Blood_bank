import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('First APP'),
//        backgroundColor: Colors.pink[400],
//      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'images/account.jpg'),
                  radius: 80.0,
                ),
                Text(
                  'Khaled Shehata',
                  style: TextStyle(fontSize: 32.0)
                ),
                Text(
                  '',
                  style: TextStyle(fontSize: 16.0),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.pink,
                          radius: 32,
                          child: new Icon(
                            Icons.account_circle,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        // Text('Followers')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        /* CircleAvatar(
                        backgroundColor: Colors.pink,
                        radius: 32,
                        child: Text(
                          '100',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),*/
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Khaled Shehata')
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.pink,
                          child: new Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16.0,
                          ),
                          radius: 32,

                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        // Text('age')
                      ],
                    ),
                    Column(
                      children: <Widget>[

                        SizedBox(
                          height: 10.0,
                        ),
                        Text('    type A+')
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                           backgroundColor: Colors.pink,
                          radius: 32,
                          child: new Icon(
                            Icons.add_location,
                            color: Colors.white,
                            size: 16.0,
                          ),

                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        // Text('Followers')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        /* CircleAvatar(
                        backgroundColor: Colors.pink,
                        radius: 32,
                        child: Text(
                          '100',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),*/
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Sharqia,Abokabeer')
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.pink,
                          radius: 32,
                          child: new Icon(
                            Icons.add_call,
                            color: Colors.white,
                            size: 16.0,
                          ),

                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        // Text('Followers')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        /* CircleAvatar(
                        backgroundColor: Colors.pink,
                        radius: 32,
                        child: Text(
                          '100',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),*/
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('0123456')
                      ],
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[

                        // ),
                        SizedBox(
                          height: 10.0,
                        ),

                        FlatButton(
                          child: new Icon(
                            Icons.add_a_photo,
                            color: Colors.pink,
                            size: 50.0,
                          ),
                          // child: Text('ok'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[

                        // ),
                        SizedBox(
                          height: 10.0,
                        ),

                        FlatButton(
                          child: new Icon(
                            Icons.add_location,
                            color: Colors.pink,
                            size: 50.0,
                          ),
                          // child: Text('ok'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    )
                  ],
                ),

                // Container(
                //height: 400.0,
                // width: double.infinity,


                //color: Colors.pinkAccent[300],

                //
                //
              ]),
        ),
      ),
    );
  }
}
