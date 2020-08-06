import 'package:flutter/material.dart';
import 'package:flutter_blood/screens/home.dart';
import 'package:provider/provider.dart';
import 'provider/loginAndsignup.dart';
import 'provider/provider_data.dart';

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
          initialRoute: 'Home' ,
          title: 'Blood bank',
          routes: {

            'Home':(context)=>Home(),

          },
        ),
      ));
}

