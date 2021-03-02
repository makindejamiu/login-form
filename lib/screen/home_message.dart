import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:pagesample/formats/messageformat.dart';
// import 'bookmark.dart';
// import './profile_image.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;
  List<dynamic> _chats = [];

  List<Widget> returnListOfContainers() {
    List<Widget> formattedChats = [];

    _chats.toList().forEach((chat) {
      formattedChats.add(messageformat(chat['avatar'], chat['name'],
          chat['summary'], chat['timestamp'], chat['notification']));
    });

    return formattedChats;
  }

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 4);

    dynamic jsonBody =
        '[{"name":"Makinde","avatar":"assets/img1.jpg","summary":"Hello World, take am easy, easy word easy word take am jejely in in in","timestamp":"2021-01-04","notification":"2"},{"name":"Makinde","avatar":"assets/img1.jpg","summary":"Hello World","timestamp":"2021-01-04","notification":"2"},{"name":"Makinde","avatar":"assets/img1.jpg","summary":"Hello World","timestamp":"2021-01-04","notification":"2"},{"name":"Makinde","avatar":"assets/img1.jpg","summary":"Hello World","timestamp":"2021-01-04","notification":"2"},{"name":"Makinde","avatar":"assets/img1.jpg","summary":"Hello World","timestamp":"2021-01-04","notification":"2"},{"name":"Makinde","avatar":"assets/img1.jpg","summary":"Hello World","timestamp":"2021-01-04","notification":"2"},{"name":"Makinde","avatar":"assets/img1.jpg","summary":"Hello World","timestamp":"2021-01-04","notification":"2"},{"name":"Makinde","avatar":"assets/img1.jpg","summary":"Hello World","timestamp":"2021-01-04","notification":"2"},{"name":"Ebuka","avatar":"assets/img1.jpg","summary":"Hello World","timestamp":"2021-01-04","notification":"2"},{"name":"Makinde","avatar":"assets/img1.jpg","summary":"Hello World","timestamp":"2021-01-04","notification":"2"},{"name":"Makinde","avatar":"assets/img1.jpg","summary":"Hello World","timestamp":"2021-01-04","notification":"2"},{"name":"Makinde","avatar":"assets/img1.jpg","summary":"Hello World","timestamp":"2021-01-04","notification":"2"}]';

    _chats = jsonDecode(jsonBody);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: 
          Text(
            'Message',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.green),
          ),
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
            scrollDirection: Axis.vertical,
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
                child: Column(
                  //  primary: false,
                  children: returnListOfContainers(),

                  //   messageformat('assets/img2.png', 'Tunde',
                  //       'Are you comming or not', '12:00', '4'),
                  //   messageformat('assets/img2.png', 'Tunde',
                  //       'Are you comming or not', '12:00', '4')
                  
                ),
              ),
            ],
          ),
        ),
      );
  }
}
