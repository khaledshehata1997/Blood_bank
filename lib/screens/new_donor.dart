import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blood/provider/donor_data.dart';
import 'package:flutter_blood/provider/model_hud.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';
class Donor extends StatefulWidget {
  @override
  _DonorState createState() => _DonorState();
}

class _DonorState extends State<Donor> {
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _phonecontroller = TextEditingController();
  TextEditingController _citycontroller = TextEditingController();
  TextEditingController _typecontroller = TextEditingController();
  TextEditingController _commentcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final donoeData =Provider.of<DonorData>(context);
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
                      controller: _namecontroller,
                      validator: (value){
                        if (value.isEmpty)
                          return 'name is Empty';
                      },
                      onSaved: (value){
                        _namecontroller.text=value;
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
                     controller: _phonecontroller,
                      validator: (value){
                        if (value.isEmpty)
                          return 'phone is Empty';
                      },
                      onSaved: (value){
                       _phonecontroller.text=value;
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
                      controller: _typecontroller,
                      validator: (value){
                        if (value.isEmpty)
                          return 'phone is Empty';
                      },
                      onSaved: (value){
                        _typecontroller.text=value;                    },
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
                      controller: _citycontroller,
                      validator: (value){
                        if (value.isEmpty)
                          return 'phone is Empty';
                      },
                      onSaved: (value){
                        _citycontroller.text=value;
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
                      controller: _commentcontroller,
                      maxLines: 6,
                      onSaved: (value){
                        _commentcontroller.text=value;                    },
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
                      await Firestore.instance.collection('Users').document().setData({
                          'name':_namecontroller.text,
                          'address':_citycontroller.text,
                          'phone':_phonecontroller.text,
                          'type':_typecontroller.text,
                          'comment':_commentcontroller.text,
                        });
                      Navigator.pushNamed(context, 'DonarList');
                      modelhud.changeIsLoading(false);


                    },
                    color: Colors.blue[900],
                    child: Text('اضافة متبرع',style: TextStyle(
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
