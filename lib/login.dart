import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(40.0, 100.0, 0.0, 0.0),
              child: Text(
                'LOGIN',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 90.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 35.0, 15.0, 0.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                        labelText: 'User Name',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                    obscureText: true,
                  ),
                  SizedBox(height: 5.0),
                  Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 15.0, right: 10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/forgot_password');
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline),
                        ),
                      )),
                  SizedBox(height: 30.0),
                  Container(
                    height: 50.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {
                          if (usernameController.text.toString().length >= 20) {
                            print('Invalid Name / Password');
                            return;
                          }
                          if (passwordController.text.toString().isEmpty) {
                            print('password is required');
                            return;
                          }
                          // if (passwordController.text.toString().isNotEmpty &&
                          //     usernameController.text.toString().length <= 20) {
                            Navigator.of(context).pushNamed('/home_message');
                          // }

                          // print(
                          //     'User_Name: ${usernameController.text}, Password: ${passwordController.text}');
                        },
                        child: Center(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                      height: 50.0,
                      color: Colors.transparent,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                  style: BorderStyle.solid)),
                          child: Center(
                            child: (Text(
                              'Log In with Facebook',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            )),
                          ))),
                ],
              ),
            ),
            SizedBox(height: 80.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New In Here ?',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                SizedBox(width: 10.0),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ]),
    );
  }
}
