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
        body: ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              'Message',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 80.0),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            )
          ],
        ),
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
        Container(
            child: ListView(
              primary: false,
              children: [
                messageformat('assets/img1.jpg', 'Tunde',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/img3.jpg', 'Dominic',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/img2.png', 'Tunde',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/icon.jpg', 'Tunde',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/img1.jpg', 'Tunde',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/icon.jpg', 'Tunde',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/img2.png', 'Tunde',
                    'Are you comming or not', '12:00', '4'),
                messageformat('assets/img3.jpg', 'Tunde',
                    'Are you comming or not', '12:00', '4')
              ],
            ),
          ),
      ],
    ));
  }
}

Widget messageformat(String img, String name, String submessage, String time,
    String notification) {
  return Padding(
    padding: EdgeInsets.only(left: 15, right: 15),
    child: Row(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                  tag: img,
                  child: Image(
                      image: AssetImage(img),
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60)),
              SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    submessage,
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w100,
                        color: Colors.grey,
                        fontStyle: FontStyle.italic),
                  )
                ],
              )
            ],
          ),
        ),
        Column(
          children: [
            Text(
              time,
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
            Container(
              height: 15,
              width: 15,
              color: Colors.green,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80.0)),
              child:  Center(child: Text(
                notification,
                style: TextStyle(color: Colors.white, fontSize: 9.0),
              ), ) 
              )
            )
          ],
        )
      ],
    ),
  );
}
