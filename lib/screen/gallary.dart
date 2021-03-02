import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: 
        Text('Gallery',
         style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.green),),
        ),
        
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          )
        ],
      ),

      body: Center(  
          child: GridView.extent(  
            primary: false,  
            padding: const EdgeInsets.all(16),  
            crossAxisSpacing: 10,  
            mainAxisSpacing: 10,  
            maxCrossAxisExtent: 200.0,  
            children: <Widget>[ 
               Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img1.jpg'),
                ),
              ),
               Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img2.png'),
                ),
              ),
               Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img3.jpg'),
                ),
              ),
               Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/icon.jpg'),
                ),
              ), 
              Container(
                child: Image(image: 
                AssetImage('assets/img1.jpg'),),),
              Container(
                child: Image(image: 
                AssetImage('assets/img3.jpg'),),),
              Container(
                child: Image(image: 
                AssetImage('assets/img2.png'),),), 
              Container(
                child: Image(image: 
                AssetImage('assets/icon.jpg'),),), 
              Container( 
                padding: const EdgeInsets.all(8),  
                child: const Text('First', style: TextStyle(fontSize: 20)),  
                color: Colors.yellow,  
              ), 
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Second', style: TextStyle(fontSize: 20)),  
                color: Colors.blue,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Third', style: TextStyle(fontSize: 20)),  
                color: Colors.blue,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Four', style: TextStyle(fontSize: 20)),  
                color: Colors.yellow,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Fifth', style: TextStyle(fontSize: 20)),  
                color: Colors.yellow,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Six', style: TextStyle(fontSize: 20)),  
                color: Colors.blue,  
              ), 
              
            ],  
          )),


     drawer: Drawer(
        elevation: 40.0,
        
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Mira Technology'),
              accountEmail: Text('miratechnology@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/img2.png'),
                radius: 20.0,
              ),
            ),
            ListTile(
              title: Text('Inbox'),
              subtitle: Text('Important messages only'),
              leading: Icon(Icons.mail),
              trailing: Icon(Icons.contact_mail),
            ),
            Divider(
              height: 0.2,
              thickness: 0.5,
              color: Colors.green,
            ),
            ListTile(
              title: Text('Primary'),
              //  tileColor: Colors.green,
              leading: Icon(Icons.inbox),
            ),
            ListTile(
                title: Text('Social'),
                //  tileColor: Colors.green,
                leading: Icon(Icons.people)),
            ListTile(
                title: Text('Promotion'),
                tileColor: Colors.green,
                leading: Icon(Icons.local_offer))
          ],
        ),
      ),
    );
  }
}