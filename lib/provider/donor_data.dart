import 'package:flutter/material.dart';

class DonorData extends ChangeNotifier{
  String bloodType ;
  String name ;
  String phone ;
  String comment ;
  String city ;
  bool isAdmin =false;

  DonorData({
   this.name ,
   this.bloodType ,
   this.phone ,
   this.city ,
   this.comment ,
});

  ChangeIsAdmin(bool value){
    isAdmin =value;
    notifyListeners();
  }

}
