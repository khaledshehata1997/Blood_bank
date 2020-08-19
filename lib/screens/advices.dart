import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Advices extends StatefulWidget {
  @override
  _AdvicesState createState() => _AdvicesState();
}

class _AdvicesState extends State<Advices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('نصائح عامة للمتبرعين'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(' 1- قياس ضغط الدم ويفضل أن يكون أقل من 90 \ 160 .',style: TextStyle(fontSize: 20,color: Colors.black),textDirection: TextDirection.rtl,),
                Divider(height: 4,thickness: 1,color: Colors.blue[800],),
                Text(' 2- يفضل أن يكون المُتبرع بالغاً، أي يبلغ من العمر 18 سنة. ',style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,),
                Divider(height: 4,thickness: 1,color: Colors.blue[800],),
                Text(' 3- عمل الفحوص للتأكد من فصيلة الدم. ',style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,),
                Divider(height: 4,thickness: 1,color: Colors.blue[800],),
                Text(' 4- التأكد من صحة الدم، وخلّوه من الأمراض المختلفة ',style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,),
                Divider(height: 4,thickness: 1,color: Colors.blue[800],),
                Text(' 5- شرب كمياتٍ كافيةٍ من السوائل بعد التبرع بالدم لتعويض نقص السوائل التي فقدها الجسم. ',style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,),
                Divider(height: 4,thickness: 1,color: Colors.blue[800],),
                Text(' 6- الحرص على عدم التدخين بعد التبرع لمدّة 3 ساعات على الأقلّ. ',style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,),
                Divider(height: 4,thickness: 1,color: Colors.blue[800],),
                Text(' 7- رفع اليدين إلى أعلى في حال النزيف ',style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,),
                Divider(height: 4,thickness: 1,color: Colors.blue[800],),
                Text(' 8- عدم إزالة اللاصق عن مكان الإبرة لمدة ساعتين على الأقل. ',style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,),
                Divider(height: 4,thickness: 1,color: Colors.blue[800],),
                Text(' 9- في حال الشعور بالغثيان أو الصداع يُفضل الاستلقاء على السرير، حتى يستطيع الجسم إعادة توازنه. ',style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,),
                Divider(height: 4,thickness: 1,color: Colors.blue[800],),
                Text(' 10- يُفضل وضع الرأس بين الفخذين لمدة 5 دقائق على الأقل لاستعادة النشاط. ',style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,),
                Divider(height: 4,thickness: 1,color: Colors.blue[800],),
                Text('   11- الابتعاد عن ممارسة التمارين الرياضية الشاقة لمدّة لا تقل عن يوم. ',style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,),
                Divider(height: 4,thickness: 1,color: Colors.blue[800],),

              ],
            ),
          )
        ],
      ),
    );
  }
}
