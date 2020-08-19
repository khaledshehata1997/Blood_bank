import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[900],
        title: Text('Blood Bank',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions:<Widget> [
          RaisedButton(
            color: Colors.blue[900],
            child: Text('Log Out',style: TextStyle(color: Colors.white),),
            onPressed: ()async{
              await FirebaseAuth.instance.signOut();
              Navigator.pushNamed(context, 'Login');
            },
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
          Column(
           children: <Widget>[
             Container(
                 width:MediaQuery.of(context).size.width*1,
                 height: 70,
                 child: Image.asset('images/bloodhome.png')),

           ],
          ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Container(
                       width: MediaQuery.of(context).size.width*.4,
                        child: RaisedButton(
                            elevation: 30,
                          color: Colors.lightBlue[50],
                            onPressed: (){
                              Navigator.pushNamed(context, 'Donor');
                            },
                            child:Image.asset('images/donor.png')
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('اضافة متبرع',style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Container(
                       width: MediaQuery.of(context).size.width*.4,
                        child: RaisedButton(
                            elevation: 30,
                            color: Colors.lightBlue[50],
                            onPressed: (){
                              Navigator.pushNamed(context, 'Need');
                            },
                            child:Image.asset('images/patient.png')
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('اضافة محتاج',style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Container(
                       width: MediaQuery.of(context).size.width*.4,
                        child: RaisedButton(
                            elevation: 30,
                            color: Colors.lightBlue[50],
                            onPressed: (){
                              Navigator.pushNamed(context, 'DonarList');
                            },
                            child:Image.asset('images/help.png')
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('قائمة المتبرعين',style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Container(
                       width: MediaQuery.of(context).size.width*.4,
                        child: RaisedButton(
                          elevation: 30,
                            color: Colors.lightBlue[50],
                            onPressed: (){
                            Navigator.pushNamed(context, 'NeedList');
                            },
                            child:Image.asset('images/donorHelp.png')
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('قائمة المحتاجين',style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),



              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Container(
                       width: MediaQuery.of(context).size.width*.4,
                        child: RaisedButton(
                            elevation: 30,
                            color: Colors.lightBlue[50],
                            onPressed: (){
                              Navigator.pushNamed(context, 'BloodBankContact');
                            },
                            child:Image.asset('images/contact (1).png')
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('دليل بنوك الدم',style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Container(
                       width: MediaQuery.of(context).size.width*.4,
                        child: RaisedButton(
                            elevation: 30,
                            color: Colors.lightBlue[50],
                            onPressed: (){
                              Navigator.pushNamed(context, 'Advices');
                            },
                            child:Image.asset('images/advice.png')
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(' نصائح عامة',style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
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
