

import 'package:flutter/material.dart';
import 'dart:ui';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Message',
              style: TextStyle(fontSize: 30.0,
               fontWeight: FontWeight.bold,
               color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            )
          ],
        ),

        body: SafeArea(

        child: ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 30),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon:
                  IconButton(icon: Icon(Icons.search), onPressed: () {}),
              hintText: 'Search here',
            ),
          ),
        ),
        SizedBox(height: 15.0),
        Container(
            // child: ListView(
            child: Column(
            //  primary: false,
              children: [
                messageformat('assets/img1.jpg', 'Tunde',
                    'Are you comming or not, cos i\'m comming home', '2:00', '4'),
                messageformat('assets/img3.jpg', 'Dominic',
                    'Meet me at home, meet me at home', '1:23', '67'),
                messageformat('assets/img2.png', 'Ade',
                    'I am at home', '1:31', '2'),
                messageformat('assets/icon.jpg', 'Sade',
                    'Meet me at home', '11:38', ''),
                messageformat('assets/img1.jpg', 'Tunde Ednut',
                    'Im around', '11:00', '4'),
                messageformat('assets/icon.jpg', 'Tunde',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/img2.png', 'Tunde',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/img3.jpg', 'Tunde',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/img2.png', 'Tunde',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/img2.png', 'Tunde',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/img2.png', 'Tunde',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/img2.png', 'Tunde',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/img2.png', 'Tunde',
                    'Are you comming or not', '12:00', '4')
              ],
            ),
          ),
      ],
    )));
  }
}

Widget messageformat(String img, String name, String submessage, String time,
    String notification) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage(img),
              ),
              SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                //  width: MediaQuery.of(context).size.width,
                  child: 
                  Text(
                    submessage,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w100,
                      color: Colors.grey[1500],
                      fontStyle: FontStyle.italic),
                  )
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(width: 10.0),
        Column(
          children: [
            Text(
              time,
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(50.0)),
                alignment: Alignment.center,
                child: Text(
                  notification,
                  style: TextStyle(color: Colors.white, fontSize: 9.0),
              ), ) 
          ],
        )
      ],
    ),
  );
}
