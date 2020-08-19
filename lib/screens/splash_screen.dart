import 'package:flutter/material.dart';
import 'package:flutter_blood/screens/login.dart';
import 'package:splashscreen/splashscreen.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
loadingText:Text('By : Khaled M Shehata'),
        seconds: 3,
        navigateAfterSeconds: new Login(),
        title: new Text(
          'Welcome to Blood Bank',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),

        image: new Image.asset('images/blood.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 150.0,
        loaderColor: Colors.red);
  }
}

