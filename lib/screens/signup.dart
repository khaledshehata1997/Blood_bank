import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blood/provider/model_hud.dart';
import 'package:flutter_blood/services/auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String _email, _password;
  final _auth = Auth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ModalProgressHUD(
            inAsyncCall: Provider.of<Modelhud>(context).isloading,
            child: Form(
              key: _globalKey,
              child: ListView(children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Column(
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: 100,
                          color: Colors.blue[900],
                          padding: EdgeInsets.only(top: 20),
                          child: Image.asset('images/blood.png')),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .035,
                      ),
                      SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width * .85,
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
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.end,
                            alignment: AlignmentDirectional
                                .topEnd // or Alignment.topLeft
                            ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) return 'name is Empty';
                          },
                          cursorColor: Colors.redAccent,
                          decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 3,
                                    style: BorderStyle.values[1],
                                    color: Colors.white)),
                            hintText: "ادخل اسمك",
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.redAccent,
                            ),
                            filled: true,
                            fillColor: Colors.blue[50],
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 3,
                                    style: BorderStyle.values[1],
                                    color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          onSaved: (value) {
                            _email = value;
                          },
                          validator: (value) {
                            if (value.isEmpty) return 'email is Empty';
                          },
                          cursorColor: Colors.redAccent,
                          decoration: InputDecoration(
                            hintText: "البريد الالكتروني",
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.redAccent,
                            ),
                            filled: true,
                            fillColor: Colors.blue[50],
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 3,
                                    style: BorderStyle.values[1],
                                    color: Colors.white)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 3,
                                    style: BorderStyle.values[1],
                                    color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: TextFormField(
                          onSaved: (value) {
                            _password = value;
                          },
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty) return 'password is Empty';
                          },
                          cursorColor: Colors.redAccent,
                          decoration: InputDecoration(
                            hintText: "الرقم السري",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.redAccent,
                            ),
                            filled: true,
                            fillColor: Colors.blue[50],
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 3,
                                    style: BorderStyle.values[1],
                                    color: Colors.white)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 3,
                                    style: BorderStyle.values[1],
                                    color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Builder(
                          builder: (context) => FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () async {
                              final modelhud =
                                  Provider.of<Modelhud>(context, listen: false);
                              modelhud.changeIsLoading(true);
                              if (_globalKey.currentState.validate()) {
                                _globalKey.currentState.save();
                                try {
                                  final authResult = await _auth.signUp(
                                      _email.trim(), _password.trim());
                                  modelhud.changeIsLoading(false);
                                  var userInfo = await Firestore.instance.collection('Users').document().setData({
                                    'email':authResult.user.email,
                                    'name':authResult.user,
                                    'email':authResult.user.email,
                                    'email':authResult.user.email,
                                    'email':authResult.user.email,
                                  });
                                  Navigator.pushNamed(context, 'Home');
                                }
                                catch (e) {
                                  modelhud.changeIsLoading(false);
                                  Scaffold.of(context).showSnackBar(SnackBar(
                                    content: Text(e.message),
                                  ));
                                }
                              }

                              modelhud.changeIsLoading(false);
                            },
                            color: Colors.black,
                            child: Text(
                              'تسجيل',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
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
                              Navigator.pushNamed(context, 'Login');
                            },
                            child: Text(
                              'دخول',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          Text(
                            'لديك حساب بالفعل ؟',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            )));
  }
}
