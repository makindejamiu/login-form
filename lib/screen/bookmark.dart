import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:pagesample/formats/bookmarkformat.dart';

class Bookmark extends StatefulWidget {
  @override
  _BookmarkState createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  List<dynamic> _bookmark = [];

  List<Widget> listOfBookmark() {
    List<Widget> bookmarkFormat = [];

    _bookmark.toList().forEach((bookmark) {
      bookmarkFormat.add(
          bookformat(bookmark['name']));
    });
    return bookmarkFormat;
  }

  dynamic jsondata =
      '[{"name":"Design thinkink"},{"name":"Mobile App"},{"name":"Web Development"},{"name":"Networking"},{"name":"Ethical Hacking"},{"name":"Secure Coding"},{"name":"Design thinkink"},{"name":"Mobile App"},{"name":"Web Development"},{"name":"Networking"},{"name":"Ethical Hacking"},{"name":"Secure Coding"},{"name":"Design thinkink"},{"name":"Mobile App"},{"name":"Web Development"},{"name":"Networking"},{"name":"Ethical Hacking"},{"name":"Secure Coding"}]';

  @override
  void initState() {
    super.initState();

    _bookmark = jsonDecode(jsondata);
  }

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: 
        Text(
          'Bookmark',
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.bookmark_border_rounded),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Column(
              children: listOfBookmark(),
            ),
          )
        ],
      ),
    );
  }
}
