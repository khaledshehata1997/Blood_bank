import 'package:flutter/material.dart';
import 'package:flutter_blood/provider/loginAndsignup.dart';
import 'package:provider/provider.dart';
class Choose extends StatefulWidget {
  @override
  _ChooseState createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    final data =Provider.of<Data>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(

          alignment: Alignment.center,
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('بإمكانك اختيار',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                Text('هل انت متبرع بالدم ام تحتاجه؟',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width*.5,
                  child: RaisedButton(
                    elevation: 30,
                    color:Colors.blue[200],
                    onPressed: (){
                      Navigator.pushNamed(context, 'NeedBlood');
                    },
                    child: Text('انا أحتاج الي دم',style: TextStyle(fontSize: 23),),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: MediaQuery.of(context).size.width*.5,
                  child: RaisedButton(
                    elevation: 30,
                    color: Colors.blue[200],
                    onPressed: (){
                      Navigator.pushNamed(context, 'Home');
                    },
                    child: Text('انا متبرع ',style: TextStyle(fontSize: 23),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
