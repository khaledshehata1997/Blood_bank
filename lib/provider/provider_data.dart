import 'package:flutter/material.dart';

class ProviderData extends ChangeNotifier{
  List<String> bloodType = ['A+', 'A-', 'B+', 'B-','AB-','AB+','O+','O-'];
  List<String> city = ['القاهرة', 'الإسماعيلية	', 'الجيزة', 'الإسكندرية','بور سعيد	','السويس','الأقصر',
    'الشرقيه	', 'الفيوم', 'أسيوط','أسوان','دمياط','البحر الأحمر	','البحيرة	','بني سويف	','جنوب سيناء	','الدقهلية','سوهاج',''
        'السويس','شمال سيناء	','الغربية','الفيوم	','القليوبية	','قنا	','كفر الشيخ	','مطروح	','المنوفية	','المنيا	','الوادي الجديد	'];
  String selectType;
  String selecCity;
  String name ;
  String phone ;

  ProviderData({
   this.name ,
   this.selecCity ,
   this.selectType ,
   this.phone ,
});
  

}