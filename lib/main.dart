import 'package:flutter/material.dart';
import 'package:flutter_blood/provider/loginAndsignup.dart';
import 'package:provider/provider.dart';
import 'provider/provider_data.dart';
import 'screens/acoount.dart';
import 'screens/choose.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/need_blood.dart';
import 'screens/signup.dart';

void main () {
  runApp(
      MultiProvider(
        providers:[
          ChangeNotifierProvider<Data>(
            create: (context)=>Data(),
          ),
          ChangeNotifierProvider<ProviderData>(
            create: (context)=>ProviderData(),

          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'Login' ,
          title: 'Blood bank',
          routes: {
            'Login':(context)=>Login(),
            'SignUp':(context)=>SignUp(),
            'Choose':(context)=>Choose(),
            'NeedBlood':(context)=>NeedBlood(),
            'Account':(context)=>Account(),
            'Home':(context)=>Home(),

          },
        ),
      ));
}

