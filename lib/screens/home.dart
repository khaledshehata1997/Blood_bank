import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blood/provider/provider_data.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);
  @override
  Widget build(BuildContext context) {
    final data =Provider.of<ProviderData>(context);
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.cover,
                )),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height*.16,
                  child: Image(
                    image: AssetImage('images/blood.png'),
                  ),
                  margin: EdgeInsets.only(top: 28),
                ),
                Text('Blood bank',
                  style: TextStyle(fontSize: 28,
                      fontFamily: 'Pacifico'),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    validator: (value){
                      if (value.isEmpty)
                        return 'name is Empty';
                    },
                    onSaved: (value){
                      data.name=value;
                    },
                    cursorColor:Colors.red ,
                    decoration: InputDecoration(
                      hintText: "ادخل اسمك",hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                      prefixIcon: Icon(
                        Icons.person_add,
                        color:Colors.red,
                      ),
                      filled: true,
                      fillColor:Colors.white,
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
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    validator: (value){
                      if (value.isEmpty)
                        return 'phone is Empty';
                    },
                    onSaved: (value){
                      data.phone=value;
                    },
                    cursorColor:Colors.red ,
                    decoration: InputDecoration(
                      hintText: "ادخل رقم الهاتف",hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                      prefixIcon: Icon(
                        Icons.contact_phone,
                        color:Colors.red,
                      ),
                      filled: true,
                      fillColor:Colors.white,
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
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.add_to_queue,color: Colors.red,),
                      DropdownButton(
                        underline: Container(
                          height: 3,
                          color: Colors.black,
                        ),
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),
                        elevation: 30,
                        icon: Icon(Icons.arrow_downward),
                        hint: Text('     فصيلة الدم',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),), // Not necessary for Option 1
                        value: data.selectType,
                        onChanged: (newValue) {
                          setState(() {
                            data.selectType = newValue;
                          });
                        },
                        items: data.bloodType.map((bloodtype) {
                          return DropdownMenuItem(
                            child: new Text( '    $bloodtype',textAlign: TextAlign.center,),
                            value: bloodtype,
                          );
                        }).toList(),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Icon(Icons.location_on,color: Colors.red,)),
                      DropdownButton(
                        underline: Container(
                          height: 3,
                          color: Colors.black,
                        ),
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),
                        elevation: 30,
                        icon: Icon(Icons.arrow_downward),
                        hint: Text('    المدينة',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),), // Not necessary for Option 1
                        value: data.selecCity,
                        onChanged: (newValue) {
                          setState(() {
                            data.selecCity= newValue;
                          });
                        },
                        items: data.city.map((citys) {
                          return DropdownMenuItem(
                            child: new Text( '$citys',textAlign: TextAlign.center,),
                            value:citys ,
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),

                SizedBox(height: 20,),
                new Text('حدد عمرك : ${(_value * 100).round()}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                new Slider(
                  onChangeEnd: (valu){
                    valu=_value;
                  },
                  inactiveColor: Colors.black,
                    activeColor: Colors.red,
                    value: _value, onChanged: _setvalue),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  onPressed: (){

                  },
                  color: Colors.black,
                  child: Text('اضافة عضو',style: TextStyle(
                    color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                  ),
                  ),

                )
              ],
            ),
          ),
              ],
            ),
    );
  }

}
