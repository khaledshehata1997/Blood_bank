import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blood/provider/donor_data.dart';
import 'package:flutter_blood/provider/model_hud.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

class Need extends StatefulWidget {
  @override
  _NeedState createState() => _NeedState();
}

class _NeedState extends State<Need> {
  TextEditingController _namecontroller2 = TextEditingController();
  TextEditingController _phonecontroller2 = TextEditingController();
  TextEditingController _citycontroller2 = TextEditingController();
  TextEditingController _typecontroller2= TextEditingController();
  TextEditingController _commentcontroller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: Provider.of<Modelhud>(context).isloading,
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 40),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 7),
                    child: TextFormField(
                      controller: _namecontroller2,
                      validator: (value){
                        if (value.isEmpty)
                          return 'name is Empty';
                      },
                      onSaved: (value){
                        _namecontroller2.text=value;
                      },
                      cursorColor:Colors.red ,
                      decoration: InputDecoration(
                        hintText: "     ادخل اسمك",hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          Icons.person_add,
                          color:Colors.red,
                        ),
                        filled: true,
                        fillColor:Colors.lightBlue[50],
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
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 7),
                    child: TextFormField(
                      controller: _phonecontroller2,
                      validator: (value){
                        if (value.isEmpty)
                          return 'phone is Empty';
                      },
                      onSaved: (value){
                        _phonecontroller2.text=value;
                      },
                      cursorColor:Colors.red ,
                      decoration: InputDecoration(
                        hintText: "      ادخل رقم الهاتف",hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          Icons.contact_phone,
                          color:Colors.red,
                        ),
                        filled: true,
                        fillColor:Colors.lightBlue[50],
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
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 7),
                    child: TextFormField(
                      controller: _typecontroller2,
                      validator: (value){
                        if (value.isEmpty)
                          return 'phone is Empty';
                      },
                      onSaved: (value){
                        _typecontroller2.text=value;                    },
                      cursorColor:Colors.red ,
                      decoration: InputDecoration(
                        hintText: "      ادخل فصيلة الدم",hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          Icons.add_circle,
                          color:Colors.red,
                        ),
                        filled: true,
                        fillColor:Colors.lightBlue[50],
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
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 7),
                    child: TextFormField(
                      controller: _citycontroller2,
                      validator: (value){
                        if (value.isEmpty)
                          return 'phone is Empty';
                      },
                      onSaved: (value){
                        _citycontroller2.text=value;
                      },
                      cursorColor:Colors.red ,
                      decoration: InputDecoration(
                        hintText: "      ادخل العنوان",hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          Icons.location_on,
                          color:Colors.red,
                        ),
                        filled: true,
                        fillColor:Colors.lightBlue[50],
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
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 7),
                    child: TextFormField(
                      controller: _commentcontroller2,
                      maxLines: 6,
                      onSaved: (value){
                        _commentcontroller2.text=value;                    },
                      cursorColor:Colors.red ,
                      decoration: InputDecoration(
                        hintText: "      اكتب ماتريد",hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),

                        filled: true,
                        fillColor:Colors.lightBlue[50],
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
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    onPressed: ()async{
                      final modelhud = Provider.of<Modelhud>(context, listen: false);
                      modelhud.changeIsLoading(true);
                      await Firestore.instance.collection('needUser').document().setData({
                        'name':_namecontroller2.text,
                        'city':_citycontroller2.text,
                        'phone':_phonecontroller2.text,
                        'type':_typecontroller2.text,
                        'comment':_commentcontroller2.text,
                      });
                      Navigator.pushNamed(context, 'NeedList');
                      modelhud.changeIsLoading(false);


                    },
                    color: Colors.blue[900],
                    child: Text('اضافة محتاج',style: TextStyle(
                        color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                    ),
                    ),

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
