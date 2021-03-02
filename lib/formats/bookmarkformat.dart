import 'package:flutter/material.dart';
//import 'progressbar.dart';

Widget bookformat(String name) {
  return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
            child: IconButton(
          icon: Icon(Icons.bookmark_border_rounded),
          onPressed: () {},
        )),
        Column(
          children: [
            Text(
              name,
              style: TextStyle(
                  //color: Colors.lime,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
            // ProgressBar()
          ],
        )
      ]));
}
