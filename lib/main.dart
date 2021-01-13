import 'package:flutter/material.dart';

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
      home: logIn(),
    );
  }
}

class logIn extends StatefulWidget {
  @override
  _logInState createState() => _logInState();
}

class _logInState extends State<logIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(35.0, 120.0, 0.0, 0.0),
            child: Text(
              'LOGIN',
              style: TextStyle(color: Colors.green, 
              fontSize: 90.0,
              fontWeight: FontWeight.bold),
            ),),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 35.0, 0.0, 0.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))
                  ),
                  obscureText: true,
                ),
              ],
            ),)
        ]),
      
    );
  }
}
