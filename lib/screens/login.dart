import 'package:flutter/material.dart';
import 'package:flutter_blood/provider/loginAndsignup.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email , password;
  @override
  Widget build(BuildContext context) {
    final data =Provider.of<Data>(context);
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("images/background.jpg"),
    fit: BoxFit.cover,
    )),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 60,bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    height: MediaQuery.of(context).size.height*.16,
                    child: Image(
                      image: AssetImage('images/blood.png'),
                    ),
                  ),
                  Text('Blood bank',
                    style: TextStyle(fontSize: 28,
                        fontFamily: 'Pacifico'),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                validator: (value){
                  if (value.isEmpty)
                    return 'email is Empty';
                },
                onSaved: (value){
                  email=value;
                },
                cursorColor:data.MainColor ,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  prefixIcon: Icon(
                    Icons.person,
                    color:data.MainColor,
                  ),
                  filled: true,
                  fillColor:data.SecColor,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 3,
                          style:BorderStyle.values[1],
                          color: Colors.white
                      )
                  ),
                  errorBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 3,
                          style:BorderStyle.values[1],
                          color: Colors.white
                      )
                  ),

                  focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.white
                      )
                  ),
                ),

              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                obscureText: true,
                validator: (value){
                  if (value.isEmpty)
                    return 'password is Empty';
                },
                onSaved: (value){
                  email=value;
                },
                cursorColor:data.MainColor ,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  prefixIcon: Icon(
                    Icons.lock,
                    color:data.MainColor,
                  ),
                  filled: true,
                  fillColor:Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 3,
                          style:BorderStyle.values[1],
                          color: Colors.white
                      )
                  ),
                  errorBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 3,
                          style:BorderStyle.values[1],
                          color: Colors.white
                      )
                  ),

                  focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.white
                      )
                  ),
                ),

              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child:FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'Choose');
                },
                color: Colors.black,
                child: Text('Login',style: TextStyle(
                    fontSize: 20,
                    color:Colors.white
                ),),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Do’t hava an account  ?  ',style: TextStyle(fontSize: 15),),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, 'SignUp');
                },
                  child: Text('Sign up ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
            ],
            )

          ],
        ),
      ),
    );

  }

}
