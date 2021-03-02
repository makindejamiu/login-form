import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pagesample/formats/profilelistformat.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<dynamic> _profile = [];

  List<Widget> listOfProfile() {
    List<Widget> profileFormat = [];

    _profile.toList().forEach((profile) {
      profileFormat.add(
          profilelist(profile['avatar'], profile['name'], profile['summary']));
    });
    return profileFormat;
  }

  dynamic jsondata =
      '[{"name":"Ebuka","avatar":"","summary":"Hello World"},{"name":"Ebuka","avatar":"","summary":"Hello World, silly json data that took my time"},{"name":"Ebuka","avatar":"","summary":"Hello World"},{"name":"Ebuka","avatar":"","summary":"Hello World"},{"name":"Ebuka","avatar":"","summary":"Hello World"},{"name":"Ebuka","avatar":"","summary":"Hello World"}]';

  @override
  void initState() {
    super.initState();

    _profile = jsonDecode(jsondata);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: 
        Text(
          'Your Profile',
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),

      body:
          SingleChildScrollView(
    // avatar profile image
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(100, 25, 100, 20),
                child: Column(children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/img1.jpg'),
                  ),
                  // Name and subtitle
                  SizedBox(height: 15.0),
                  Text(
                    'Jems Anderson',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 10.0),
                  Text('120 points next level',
                      style: TextStyle(fontSize: 13.0, color: Colors.grey)),
                ])),

    // container favourite row
            Container(
              padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.yellow[200],
                      ),
                      child: IconButton(
                        icon: Icon(Icons.star_border),
                        onPressed: (){},
                      )),
                  Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blue[50],
                      ),
                      child: IconButton(
                        icon: Icon(Icons.person),
                        onPressed: (){},
                      )),
                  Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.pink[50],
                      ),
                      child: IconButton(
                        icon: Icon(Icons.thumb_up_outlined),
                        onPressed: (){},
                      )),
                ],
              ),
            ),

    // Completed course
            Container(
              padding: EdgeInsets.fromLTRB(45, 10, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Completed Courses',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 25.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.red[300]),
                    child: Center(
                      child: Text('See all'),
                    ),
                  )
                ],
              ),
            ),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
                child: Column(
                  children: listOfProfile(),
                )
                )
          ],
        ),
      ),
    );
  }
}
