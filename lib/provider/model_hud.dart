import 'package:flutter/cupertino.dart';

class Modelhud extends ChangeNotifier
{
  bool isloading=false;

  changeIsLoading(bool value){
    isloading=value;
    notifyListeners();

  }
}