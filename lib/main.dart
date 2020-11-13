import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Text('My Public Profile Page'),
        ),
        body: Column(
          children: [
            SizedBox(height: 50,),
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('images/me.jpg'),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 40,
              child: new Image.asset('images/medal.png'),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: ListTile(
                leading: Icon(Icons.person,size: 35.0,),
                title: Text('Name', style: TextStyle(fontSize: 14.0),),
                subtitle: Text('Efrizal', style: TextStyle(fontSize: 17.0),),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: ListTile(
                leading: Icon(Icons.message,size: 35.0,),
                title: Text('Tagline', style: TextStyle(fontSize: 14.0),),
                subtitle: Text('Kopi hangat tidak bikin ngantuk', style: TextStyle(fontSize: 17.0),),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                SizedBox(
                  height: 25,
                  child: new Image.asset('facebook.png'),
                ),
                SizedBox(width: 20,),
                SizedBox(
                  height: 25,
                  child: new Image.asset('github-sign.png'),
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}

