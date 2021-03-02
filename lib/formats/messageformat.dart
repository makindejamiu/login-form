import 'package:flutter/material.dart';

Widget messageformat(String img, String name, String submessage, String time,
    String notification) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start, 
      children: [
        Container(
          child: CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage(img),
          )
        ),
      
      SizedBox(width: 20.0),
      Expanded(
        
      child: 
      Container(child: 
      Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(
             name,
                style: TextStyle(
                fontSize: 20.0, 
                fontWeight: FontWeight.bold),
          ),

          Text(
              time,
                style: TextStyle(fontSize: 12.0, 
                color: Colors.grey),
          ),
        ],),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: 200),
              child:
                Text(
                submessage,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w100,
                    color: Colors.grey[900],
                    fontStyle: FontStyle.italic
                ),
              ),
            ),
            
            Container(
              height: 18,
              width: 18,
              decoration: 
              BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(50.0)
              ),
              alignment: Alignment.center,
                child: 
                Text(
                  notification,
                  style: 
                  TextStyle(color: Colors.white, 
                  fontSize: 9.0),
                ),
            )
        ],)
      ],))
      ),
    ]),
  );
}