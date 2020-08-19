import 'package:flutter/material.dart';
import 'package:flutter_blood/provider/need_data.dart';
import 'package:flutter_blood/screens/new_donor.dart';
import 'package:provider/provider.dart';
import 'provider/admin_mode.dart';
import 'provider/donor_data.dart';
import 'package:flutter_blood/screens/home.dart';

import 'provider/model_hud.dart';
import 'screens/advices.dart';
import 'screens/blood_bank_contact.dart';
import 'screens/donor_list.dart';
import 'screens/login.dart';
import 'screens/need_blood.dart';
import 'screens/need_list.dart';
import 'screens/signup.dart';
import 'screens/splash_screen.dart';

void main () {
  runApp(
      MultiProvider(
        providers:[
          ChangeNotifierProvider<DonorData>(
            create: (context)=>DonorData(),

          ),ChangeNotifierProvider<NeedData>(
            create: (context)=>NeedData(),

          ),ChangeNotifierProvider<Modelhud>(
            create: (context)=>Modelhud(),

          ),ChangeNotifierProvider<AdminMode>(
            create: (context)=>AdminMode(),

          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'Splash' ,
          title: 'Blood bank',
          routes: {

            'Donor':(context)=>Donor(),
            'Home':(context)=>Home(),
            'Need':(context)=>Need(),
            'BloodBankContact':(context)=>BloodBankContact(),
            'SignUp':(context)=>SignUp(),
            'Login':(context)=>Login(),
            'Splash':(context)=>Splash(),
            'DonarList':(context)=>DonarList(),
            'NeedList':(context)=>NeedList(),
            'Advices':(context)=>Advices(),

          },
        ),
      ));
}






