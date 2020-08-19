import 'package:cloud_firestore/cloud_firestore.dart';
class DatabaseService{
  final CollectionReference brewCollection =Firestore.instance.collection('brews');
  final String uid ;
  DatabaseService({this.uid});

  Future updateUserData(String name ,String address, int age, String type,String comment) async{
    return await brewCollection.document(uid).setData({
      'name':name,
      'address':address,
      'age':age,
      'type':type,
      'comment':comment,
    });
  }
}