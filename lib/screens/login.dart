import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blood/provider/admin_mode.dart';
import 'package:flutter_blood/provider/model_hud.dart';
import 'package:flutter_blood/services/auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String email , password;
  final _auth=Auth();
  bool isAdmin =false;
  final adminPassword='khaled000111';
  bool keepMeLoggedIn = false;
  final kKeepMeLoggedIn = 'KeepMeLoggedIn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: Provider.of<Modelhud>(context).isloading,
        child: Form(
          key: _globalKey,
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: 100,
                        color: Colors.blue[900],
                        padding: EdgeInsets.only(top: 15),
                        child: Image.asset('images/blood.png')),
                    TextLiquidFill(
                      waveDuration: Duration(milliseconds: 500),
                      loadDuration: Duration(milliseconds: 8000),
                      text: 'Blood Bank',
                      waveColor: Colors.redAccent,
                      boxBackgroundColor: Colors.blue[900],
                      textStyle: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                      boxHeight: 44,
                      boxWidth: MediaQuery.of(context).size.width * 1,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .035,
                    ),
                    SizedBox(
                      height: 37,
                      width: MediaQuery.of(context).size.width * .8,
                      child: TypewriterAnimatedTextKit(
                          speed: Duration(milliseconds: 90),
                          pause: Duration(milliseconds: 2000),
                          onTap: () {
                            print("Tap Event");
                          },
                          text: [
                            " وَمَنْ أَحْيَاهَا فَكَأَنَّمَا أَحْيَا النَّاسَ جَمِيعًا  ",
                          ],
                          textStyle: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.end,
                          alignment:
                          AlignmentDirectional.topEnd // or Alignment.topLeft
                      ),
                    ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 12),
                child: TextFormField(
                  validator: (value){
                    if (value.isEmpty)
                      return 'email is Empty';
                  },
                  onSaved: (value){
                    email=value;
                  },
                  cursorColor:Colors.redAccent ,
                  decoration: InputDecoration(
                    hintText: "ادخل البريد الالكتروني",
                    prefixIcon: Icon(
                      Icons.lock,
                      color:Colors.redAccent,
                    ),
                    filled: true,
                    fillColor:Colors.blue[50],
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            width: 3,
                            style:BorderStyle.values[1],
                            color: Colors.white
                        )
                    ),
                    errorBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            width: 3,
                            style:BorderStyle.values[1],
                            color: Colors.white
                        )
                    ),

                    focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  onSaved: (value){
                    password=value;
                  },
                  obscureText: true,
                  validator: (value){
                    if (value.isEmpty)
                      return 'password is Empty';
                  },
                  cursorColor:Colors.redAccent ,
                  decoration: InputDecoration(
                    hintText: "ادخل الرقم السري",
                    prefixIcon: Icon(
                      Icons.lock,
                      color:Colors.redAccent,
                    ),
                    filled: true,
                    fillColor:Colors.blue[50],
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            width: 3,
                            style:BorderStyle.values[1],
                            color: Colors.white
                        )
                    ),
                    errorBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            width: 3,
                            style:BorderStyle.values[1],
                            color: Colors.white
                        )
                    ),

                    focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                  ),

                ),
              ),
                    Container(
                      padding: EdgeInsets.only(left: 25),
                      child: Row(
                        children: <Widget>[
                          Theme(
                            data: ThemeData(unselectedWidgetColor: Colors.black),
                            child: Checkbox(hoverColor: Colors.blue[900],
                              checkColor: Colors.redAccent,
                              activeColor: Colors.blue[900],
                              value: keepMeLoggedIn,
                              onChanged: (value) {
                                setState(() {
                                  keepMeLoggedIn = value;
                                });
                              },
                            ),
                          ),
                          Text(
                            'Remmeber Me ',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Builder(
                  builder:(context)=> FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    onPressed: () {
                      if (keepMeLoggedIn == true) {
                        keepUserLoggedIn();
                      }
                      _validate(context);
                    },
                    color: Colors.black,
                    child: Text('دخول',style: TextStyle(
                        fontSize: 25,
                        color:Colors.white
                    ),),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          color: Colors.blue[50],
                          onPressed: () {
                            Navigator.pushNamed(context, 'SignUp');
                          },
                          child: Text(
                            'تسجيل حساب جديد',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        Text(
                          'ليس لديك حساب ؟ ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
              Padding(
                padding: EdgeInsets.only(left:20,right:30,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Provider.of<AdminMode>(context,listen: false).ChangeIsAdmin(true);

                      },
                      child: Text('I ’M an Admin ',style: TextStyle(
                          color: Provider.of<AdminMode>(context).isAdmin?Colors.white : Colors.black
                      ),
                        textAlign: TextAlign.center,),
                    ),
                    GestureDetector(
                      onTap: (){
                        Provider.of<AdminMode>(context,listen: false).ChangeIsAdmin(false);
                      },
                      child: Text('I ’M a User ',style: TextStyle(
                          color: Provider.of<AdminMode>(context).isAdmin? Colors.black :Colors.white
                      ),
                          textAlign: TextAlign.center
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ]),
    )));
  }

  void _validate(BuildContext context) async {
    final modelhud = Provider.of<Modelhud>(context, listen: false);
    modelhud.changeIsLoading(true);
    if (_globalKey.currentState.validate()) {
      _globalKey.currentState.save();
      if (Provider.of<AdminMode>(context, listen: false).isAdmin) {
        if (password == adminPassword) {
          try {
            await _auth.signIn(email.trim(), password.trim());
            Navigator.pushNamed(context, 'Home');
          } catch (e) {
            modelhud.changeIsLoading(false);
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text(e.message),
            ));
          }
        } else {
          modelhud.changeIsLoading(false);
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Something went wrong !'),
          ));
        }
      } else {
        try {
          await _auth.signIn(email.trim(), password.trim());
          Navigator.pushNamed(context,'Home');
        } catch (e) {
          modelhud.changeIsLoading(false);
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(e.message),
          ));
        }
      }
    }
    modelhud.changeIsLoading(false);
  }
  void keepUserLoggedIn() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(kKeepMeLoggedIn, keepMeLoggedIn);
  }
}