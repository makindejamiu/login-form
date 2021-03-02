// import 'dart:html';

import 'package:flutter/material.dart';

Widget profilelist(String avatar, String name, String summary) {
  return ListTile(
      title: Text(name,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold
      ),),
      subtitle: Text(summary,
      style: TextStyle(
        fontSize: 12.0),),
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        radius: 50.0,
        child: Center(child: 
        Text('1',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0
        ),),),
      ),);
}
