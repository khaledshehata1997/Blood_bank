import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DonarList extends StatefulWidget {
  @override
  _DonarListState createState() => _DonarListState();
}

class _DonarListState extends State<DonarList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('قائمة المتبرعين'),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('Users').snapshots(),
        builder: (context , snapshot) {
          if(!snapshot.hasData){
            return Text('loading data...');
          }
          return ListView.builder(
          itemCount: snapshot.data.documents.length,
              itemBuilder: (context , index){
              DocumentSnapshot users =snapshot.data.documents[index];
              return Container(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(users['name'],style: TextStyle(fontSize: 20,color: Colors.redAccent,fontWeight: FontWeight.bold),),
                      SizedBox(height: 6,),
                      Text(users['type'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 6,),
                      Text(users['address'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 6,),

                      Text(users['phone'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 6,),

                      Text(users['comment'],style: TextStyle(fontSize: 16),),
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
