import 'package:flutter/cupertino.dart';


class AdminMode extends ChangeNotifier{
  bool isAdmin =false;

  ChangeIsAdmin(bool value){
    isAdmin =value;
    notifyListeners();
  }
}