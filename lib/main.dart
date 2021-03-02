import 'package:flutter/material.dart';
import 'package:pagesample/screen/forget_password.dart';
//import 'package:pagesample/profile_image.dart';
import 'screen/Register.dart';
//import 'screen/home_message.dart';
//import 'screen/forget_password.dart';
import 'screen/login.dart';
import 'nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Project',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LogIn(),
        '/nav': (BuildContext context) => HomePage(),
        '/register': (BuildContext context) => Register(),
      //'/home_message': (BuildContext context) => Home(),
        '/forgot_password': (BuildContext context) => Forgot(),
      //  '/profile_image': (BuildContext context) => Profile()
      },
      initialRoute: '/login'
    );
  }
}
