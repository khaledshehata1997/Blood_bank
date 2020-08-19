import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NeedList extends StatefulWidget {
  @override
  _NeedListtState createState() => _NeedListtState();
}

class _NeedListtState extends State<NeedList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('قائمة المحتاجين'),
        centerTitle: true,
      ),
      body: StreamBuilder(
          stream: Firestore.instance.collection('needUser').snapshots(),
          builder: (context , snapshot2) {
            if(!snapshot2.hasData){
              return Text('loading data...');
            }
            return ListView.builder(
                itemCount: snapshot2.data.documents.length,
                itemBuilder: (context , index){
                  DocumentSnapshot needUser =snapshot2.data.documents[index];
                  return Container(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(needUser['name'],style: TextStyle(fontSize: 20,color: Colors.redAccent,fontWeight: FontWeight.bold),),
                          SizedBox(height: 6,),
                          Text(needUser['type'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 6,),
                          Text(needUser['city'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(height: 6,),

                          Text(needUser['phone'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 6,),

                          Text(needUser['comment'],style: TextStyle(fontSize: 16),),
                          SizedBox(height: 6,),

                          Divider(height: 15,thickness: 5,),],
                      ),
                    ),
                  );

                });
          }
      ),
    );
  }
}
