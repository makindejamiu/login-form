import 'package:flutter/material.dart';
import 'package:pagesample/forget_password.dart';
import 'Register.dart';
import 'home_message.dart';
import 'forget_password.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LogIn(),
        '/register': (BuildContext context) => Register(),
        '/home_message': (BuildContext context) => Home(),
        '/forgot_password': (BuildContext context) => Forgot()
      },
      initialRoute: '/login'
    );
  }
}
