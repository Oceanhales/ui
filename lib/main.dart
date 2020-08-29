import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/SignUpPage.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter_app/Animation/FadeAnimation.dart';
import 'package:flutter_app/Screens/dashboard.dart';
import 'package:flutter_app/UI Resorce/colors.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      title: new Text(
        'Welcome To Nitto Attendence App',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0,color: Colors.black54 ),
      ),

      seconds: 4,
      navigateAfterSeconds: LoginScreen(),

      image: Image.asset(
          'assets/images/logo.gif'),
      backgroundColor: Colors.white,
      //styleTextUnderTheLoader: new TextStyle(),
      photoSize: 150.0,
      //onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.white,
    );
  }
}

class LoginScreen extends StatelessWidget {

  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(

                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:0.0,left: 20,right: 20,bottom: 20),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 15,
                                  color: myPrimaryColor,),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 15,
                                  color: myPrimaryColor,),
                                decoration: InputDecoration(

                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  Container(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      onPressed: () => print('Forgot Password Button Pressed'),
                      padding: EdgeInsets.only(right: 0.0),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: myPrimaryColor),
                      ),
                    ),
                  ),
                  Container(
                    height: 20.0,
                    child: Row(
                      children: <Widget>[
                        Theme(
                          data: ThemeData(unselectedWidgetColor: Colors.white),
                          child: Checkbox(
                            value: _rememberMe,
                            checkColor: Colors.green,
                            activeColor: Colors.white,
                            // onChanged: (value) {
                            //   setState(() {
                            //     _rememberMe = value;
                            //   });
                            // },
                          ),
                        ),
                        Text(
                          'Remember me', style: TextStyle(color: myPrimaryColor)
                        ),
                      ],
                    ),
                  ),
                      SizedBox(height: 30,),
                      FadeAnimation(2,
                          GestureDetector(
                            onTap:(){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomeScreen(),),
                              );
                            },
                            child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: myPrimaryColor,
                        ),
                        child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                      ),
                          )),
                      SizedBox(height: 80,),
                      FadeAnimation(1.5, Text("Don't have an account?", style: TextStyle(color: myPrimaryColor),)),
                      SizedBox(height: 10,),
                      FadeAnimation(2, Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 255, 255, 1),
                                  Color.fromRGBO(255, 255, 255, .6),
                                ]
                            )
                        ),
                        child: Center(
                          child: GestureDetector(
                              onTap:() {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUpPage(),),
                              );
                          },
                              child: Text("Sign Up", style: TextStyle(color: myPrimaryColor, fontWeight: FontWeight.w900,fontSize: 18),)),
                        ),
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}