import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen/bookmark.dart';
import 'screen/gallary.dart';
import 'screen/home_message.dart';
import 'screen/profile_image.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int pageIndex = 2;
  List<Widget> pages = [
    Gallery(),
    Bookmark(),
    Home(),
    Profile()
    // Container(child: Text('Page 1')),
    // Container(child: Text('Page 2')),
    // Container(child: Text('Page 3'))
  ];

  void onPageTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: pages.elementAt(pageIndex),
        ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_rounded),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: pageIndex,
        selectedItemColor: Colors.green,
        selectedFontSize: 15.0,
        unselectedItemColor: Colors.black,
        iconSize: 30.0,
        onTap: onPageTapped,
        elevation: 5.0,
      ),

      // bottomNavigationBar: new Material(
        //           child: TabBar(
        //             controller: controller,
        //             tabs: [
        //               Tab(icon: Icon(Icons.home)),
        //               Tab(icon: Icon(Icons.bookmark_border_rounded)),
        //               Tab(icon: Icon(Icons.message_outlined)),
        //               Tab(icon: Icon(Icons.person_outline))
        //             ],
        //           ),
        //         )


    );
  }

}
