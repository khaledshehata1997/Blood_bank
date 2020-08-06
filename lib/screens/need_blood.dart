import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blood/provider/loginAndsignup.dart';
import 'package:provider/provider.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';

class NeedBlood extends StatefulWidget {
  @override
  _NeedBloodState createState() => _NeedBloodState();
}

class _NeedBloodState extends State<NeedBlood> {
  List<String> _bloodType = ['A+', 'A-', 'B+', 'B-','AB-','AB+','O+','O-']; // Option 2
  String _selectType; // Option 2
  String _Locaton; // Option 2
  var _contry; // Option 2


  @override
  Widget build(BuildContext context) {
    final data =Provider.of<Data>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(

            alignment: Alignment.center,
            child: ListView(
             children: <Widget>[
               Column(
                 children: <Widget>[

                   Padding(
                     padding: EdgeInsets.only(top: 70),
                     child: DropdownButton(
                       underline: Container(
                         height: 3,
                         color: Colors.black,
                       ),
                       style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                       elevation: 30,
                       icon: Icon(Icons.arrow_downward),
                       hint: Text('إختر الفصيلة  التي تحتاجها',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),), // Not necessary for Option 1
                       value: _selectType,
                       onChanged: (newValue) {
                         setState(() {
                           _selectType = newValue;
                         });
                       },
                       items: _bloodType.map((location) {
                         return DropdownMenuItem(
                           child: new Text(location),
                           value: location,
                         );
                       }).toList(),
                     ),
                   ),
                   SizedBox(
                     height: 50,
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 30),
                     child: TextFormField(

                       validator: (value){
                         if (value.isEmpty)
                           return 'post is Empty';
                       },
                       onSaved: (value){
                          value =_Locaton;
                       },
                       cursorColor:data.MainColor ,
                       decoration: InputDecoration(
                         hintText: "ادخل عنوانك بالتفصيل هنا ",
                         filled: true,
                         fillColor:Colors.blue[200],
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
                   SizedBox(height: 30,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 30),
                     child: TextFormField(
                       maxLength: 1000,
                       maxLines: 12,
                       validator: (value){
                         if (value.isEmpty)
                           return 'post is Empty';
                       },
                       onSaved: (value){

                       },
                       cursorColor:data.MainColor ,
                       decoration: InputDecoration(
                         hintText: "اكتب منشورا هنا لتخبر الناس بإنك تحتاج دم",
                         filled: true,
                         fillColor:Colors.blue[200],
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
        CountryPicker(
          dense: false,
          showFlag: true,  //displays flag, true by default
          showDialingCode: false, //displays dialing code, false by default
          showName: true, //displays country name, true by default
          showCurrency: false, //eg. 'British pound'
          showCurrencyISO: true, //eg. 'GBP'
          onChanged: (Country country) {
            setState(() {
              _contry = country;
            });
          },
          selectedCountry: _contry,
        ),
      ]),
                   FlatButton(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)
                     ),
                     onPressed: (){},
                     child: Text('نشر',style: TextStyle(color: Colors.white,fontSize: 20),),
                     color: Colors.black,
                   )
                 ],
               ),
            )
        ),

    );
  }
}
